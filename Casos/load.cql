export FILEPATH=file:///complaints.csv

// Complaints, companies, responses.

// Uniqueness constraints.
CREATE CONSTRAINT ON (c:Complaint) ASSERT c.id IS UNIQUE;
CREATE CONSTRAINT ON (c:Company) ASSERT c.name IS UNIQUE;
CREATE CONSTRAINT ON (r:Response) ASSERT r.name IS UNIQUE;

// Load.
:auto USING PERIODIC COMMIT 1000
LOAD CSV WITH HEADERS 
FROM {FILEPATH} AS line
WITH line, SPLIT(line.`Date received`, "-") AS date
WHERE line.`Company response to consumer` IS NOT NULL 
AND line.Company IS NOT NULL

CREATE (complaint:Complaint { id: toInteger(line.`Complaint ID`) })
SET complaint.year = toInteger(date[0]),
    complaint.month = toInteger(date[1]),
    complaint.day = toInteger(date[2])

MERGE (company:Company { name: toUpper(line.Company) })
MERGE (response:Response { name: toUpper(line.`Company response to consumer`) })

CREATE (complaint)-[:AGAINST]->(company)
CREATE (response)-[r:TO]->(complaint)

SET r.timely = CASE line.`Timely response?` WHEN 'Yes' THEN true ELSE false END,
    r.disputed = CASE line.`Consumer disputed?` WHEN 'Yes' THEN true ELSE false END
;

// Products, issues.

	// Uniqueness constraints.
CREATE CONSTRAINT ON (p:Product) ASSERT p.name IS UNIQUE;
CREATE CONSTRAINT ON (i:Issue) ASSERT i.name IS UNIQUE;

// Load.
:auto USING PERIODIC COMMIT 1000
LOAD CSV WITH HEADERS 
FROM {FILEPATH} AS line
WITH line
WHERE line.Product IS NOT NULL
AND line.Issue IS NOT NULL

MATCH (complaint:Complaint { id: toInteger(line.`Complaint ID`) })

MERGE (product:Product { name: toUpper(line.Product) })
MERGE (issue:Issue {name: toUpper(line.Issue) })

CREATE (complaint)-[:ABOUT]->(product)
CREATE (complaint)-[:WITH]->(issue)
;

// Sub issues, sub products.

	// Uniqueness constraints.
CREATE CONSTRAINT ON (s:SubProduct) ASSERT s.name IS UNIQUE;
CREATE CONSTRAINT ON (s:SubIssue) ASSERT s.name IS UNIQUE;

// Load.

export FILEPATH=file:///subissues.csv

:auto USING PERIODIC COMMIT 1000
LOAD CSV WITH HEADERS
FROM {FILEPATH} AS line
WITH line 
WHERE line.`Sub-issue` <> '' AND
      line.`Sub-issue` IS NOT NULL

MATCH (complaint:Complaint { id: toInteger(line.`Complaint ID`) })
MATCH (complaint)-[:WITH]->(issue:Issue)

MERGE (subIssue:SubIssue { name: toUpper(line.`Sub-issue`) })
MERGE (subIssue)-[:IN_CATEGORY]->(issue)
CREATE (complaint)-[:WITH]->(subIssue)
;

export FILEPATH=file:///subproducts.csv

:auto USING PERIODIC COMMIT 1000
LOAD CSV WITH HEADERS
FROM {FILEPATH} AS line
WITH line 
WHERE line.`Sub-product` <> '' AND
      line.`Sub-product` IS NOT NULL

MATCH (complaint:Complaint { id: toInteger(line.`Complaint ID`) })
MATCH (complaint)-[:ABOUT]->(product:Product)

MERGE (subProduct:SubProduct { name: toUpper(line.`Sub-product`) })
MERGE (subProduct)-[:IN_CATEGORY]->(product)
CREATE (complaint)-[:ABOUT]->(subProduct)
;