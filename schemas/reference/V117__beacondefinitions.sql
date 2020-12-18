CREATE TABLE beacondefinitions (
  id INT4 NOT NULL PRIMARY KEY,
  beaconnum INT4 NOT NULL,
  locationid INT4 NOT NULL,
  beaconname VARCHAR(50) NOT NULL,
  description VARCHAR(250) NOT NULL,
  locationtypeid INT4 NOT NULL,
  opendatetimeutc TIMESTAMP WITH TIME ZONE,
  closeddatetimeutc TIMESTAMP WITH TIME ZONE,
  rssirangeto INT4 NOT NULL,
  rssirangefrom INT4 NOT NULL,
  isactive BOOLEAN NOT NULL,
  isentry BOOLEAN NOT NULL,
  isexit BOOLEAN NOT NULL,
  isexternal BOOLEAN NOT NULL,
  isinternal BOOLEAN NOT NULL,
  useforstatecalculation BOOLEAN NOT NULL,
  ispurchasepoint BOOLEAN NOT NULL,
  triggerinternalthresholdinseconds INT4 NOT NULL,
  triggeredexternalstatetypevalue INT4 NOT NULL,
  untriggeredexternalstatetypevalue INT4 NOT NULL,
  triggeredinternalstatetypevalue INT4 NOT NULL,
  untriggeredinternalstatetypevalue INT4 NOT NULL,
  triggerexternalthresholdinseconds INT4 NOT NULL,
  latitude NUMERIC,
  longitude NUMERIC,
  utctimezone VARCHAR(50) NOT NULL,
  beacongroupnum INT4 NOT NULL,
  groupownernum INT4 NOT NULL,
  beaconserialname VARCHAR(50) NOT NULL,
  beaconguid UUID NOT NULL,
  beacondeviceid VARCHAR(128) NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE,
  updatedby VARCHAR(60) NULL
);

-- Table comment
COMMENT ON TABLE beacondefinitions IS '{"label": "Beacon definitions", "owner": "mark@digitalpatterns.io", "description": "Precog IOT Beacon definitions, "schemalastupdated": "18/12/2020", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN beacondefinitions.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN beacondefinitions.beaconnum IS '{"label": "BeaconNum", "businesskey": "true", "description": "Beacon Number", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.locationid IS '{"label": "Location ID", "description": "location identifier", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.beaconname IS '{"label": "BeaconName", "description": "Name", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.description IS '{"label": "Description", "description": "Description", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.locationtypeid IS '{"label": "Location Type ID", "description": "Location type identifier", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.opendatetimeutc IS '{"label": "Open date/time", "description": "Beacon start date/time", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.closeddatetimeutc IS '{"label": "Closed date/time", "description": "Beacon close date/time", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.rssirangeto IS '{"label": "RSSI Range To", "description": "Minimum RSSI range", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.rssirangefrom IS '{"label": "RSSI Range From", "description": "Maximum RSSI range", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.isactive IS '{"label": "Active", "description": "Active location sensor", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.isentry IS '{"label": "Entry", "description": "Entry position sensor", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.isexit IS '{"label": "Exit", "description": "Exit position sensor", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.isexterntal IS '{"label": "External", "description": "External sensor", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.isinternal IS '{"label": "Internal", "description": "Internal sensor", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.useforstatecalculation IS '{"label": "State Calculation", "description": "Include device in calculation of state", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.ispurchasepoint IS '{"label": "Purchase Point", "description": "Is location a purchase point?", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.triggerinternalthresholdinseconds IS '{"label": "Trigger internal threshold", "description": "Threshold in seconds to trigger internal alert", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.triggeredexternalstatetypevalue IS '{"label": "Triggered external state type", "description": "Triggered external state type value", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.untriggeredexternalstatetypevalue IS '{"label": "Untriggered external state type", "description": "Untriggered external state type value", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.triggeredinternalstatetypevalue IS '{"label": "Triggered internal state type", "description": "Triggered internal state type value", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.untriggeredinternalstatetypevalue IS '{"label": "Untriggered internal State Type", "description": "Untriggered internal state type value", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.triggerexternalthresholdinseconds IS '{"label": "Triger external threshold", "description": "Threshold in seconds to trigger external alert", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.latitude IS '{"label": "Latitude", "description": "Latitude of beacon location", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.longitude IS '{"label": "Longitude internal State Type", "description": "Longitude of beacon location", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.utctimezone IS '{"label": "utctimezone", "description": "UTC time zone of Beacon location", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.beacongroupnum IS '{"label": "Group number", "description": "Beacon group number", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.groupownernum IS '{"label": "Group Owner", "description": "Beacon group owner", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.beaconserialname IS '{"label": "Serial name", "description": "Beacon serial name", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.beaconguid IS '{"label": "Beacon GUID", "description": "Beacon GUID", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.beacondeviceid IS '{"label": "Beacon ID", "description": "Beacon device ID", "summaryview": "true"}';
COMMENT ON COLUMN beacondefinitions.validfrom IS '{"label": "Valid from date", "description": "Record valid from date.", "summaryview": "false"}';
COMMENT ON COLUMN beacondefinitions.validto IS '{"label": "Valid to date", "description": "Record valid to date.", "summaryview": "false"}';
COMMENT ON COLUMN beacondefinitions.updatedby IS '{"label": "Updated By", "description": "Record updated by", "summaryview": "false"}';

-- GRANTs
GRANT SELECT,INSERT,UPDATE ON beacondefinitions TO ${serviceuser};
GRANT SELECT ON beacondefinitions TO ${readonlyuser};
