CREATE TABLE technicalprojectstatus (
  id int4 NOT NULL PRIMARY KEY,
  status varchar(20) NOT NULL
);

-- GRANTs
GRANT SELECT ON technicalprojectstatus TO ${anonuser};
GRANT SELECT ON technicalprojectstatus TO ${serviceuser};
GRANT SELECT ON technicalprojectstatus TO ${readonlyuser};

COMMENT ON TABLE technicalprojectstatus IS '{"description": "Technical project statuses", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN technicalprojectstatus.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN technicalprojectstatus.status IS '{"label": "Status", "description": "project statuses", "summaryview": "true"}';