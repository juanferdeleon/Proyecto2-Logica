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

