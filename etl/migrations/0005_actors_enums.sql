-- =====================================================================
-- 0005_actors_enums.sql — Reference data for actor types
-- =====================================================================
-- The actors[] array on obligations contains tokens like EMPLOYER,
-- GOVERNMENT_AGENCY, AI_DEVELOPER. This table is the canonical list
-- with descriptions and operational definitions.

CREATE TABLE IF NOT EXISTS actor_types (
    code                        TEXT PRIMARY KEY,
    category                    TEXT NOT NULL CHECK (category IN (
                                    'public_sector',
                                    'private_sector',
                                    'individual',
                                    'cross_sector'
                                )),
    display_name                TEXT NOT NULL,
    description                 TEXT NOT NULL,
    sentainel_classification    TEXT,                           -- which customer segment uses this
    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Seed the canonical actor types observed across V1 regulations
INSERT INTO actor_types (code, category, display_name, description) VALUES
    ('AI_DEVELOPER',          'private_sector', 'AI Developer',           'Builds AI models, systems, or substantial components'),
    ('AI_DEPLOYER',           'private_sector', 'AI Deployer',            'Uses an AI system in production interactions with end users'),
    ('AI_DISTRIBUTOR',        'private_sector', 'AI Distributor',         'Makes an AI system available to others (reseller, integrator)'),
    ('EMPLOYER',              'private_sector', 'Employer',               'Hires or seeks to hire workers; subject to ESA, HR-tech regulations'),
    ('SERVICE_PROVIDER',      'private_sector', 'Service Provider',       'Processes personal data on behalf of a controller (Quebec s. 18.3)'),
    ('DATA_CONTROLLER',       'private_sector', 'Data Controller',        'Determines purposes and means of personal data processing'),
    ('HEALTHCARE_PROVIDER',   'private_sector', 'Healthcare Provider',    'Licensed entity delivering medical care; subject to PHIPA, TRAIGA § 552.051(f)'),
    ('FINANCIAL_INSTITUTION', 'private_sector', 'Financial Institution',  'Federally insured deposit-taking or credit institution'),
    ('INSURANCE_ENTITY',      'private_sector', 'Insurance Entity',       'Subject to Texas Insurance Code / equivalent state law'),
    ('GOVERNMENT_AGENCY',     'public_sector',  'Government Agency',      'State or local government body exercising governmental functions'),
    ('MUNICIPAL_INSTITUTION', 'public_sector',  'Municipal Institution',  'Specifically Ontario MFIPPA: municipalities, school boards, local boards'),
    ('PUBLIC_BODY',           'public_sector',  'Public Body',            'Quebec public sector entity under CQLR c. A-2.1'),
    ('LAW_ENFORCEMENT',       'public_sector',  'Law Enforcement Agency', 'Police, AG investigative bodies, intelligence services'),
    ('CONSUMER',              'individual',     'Consumer',               'Individual acting in individual or household context'),
    ('DATA_SUBJECT',          'individual',     'Data Subject',           'Identified or identifiable individual whose data is processed'),
    ('JOB_APPLICANT',         'individual',     'Job Applicant',          'Person applying for publicly advertised employment'),
    ('PATIENT',               'individual',     'Patient',                'Individual receiving healthcare services'),
    ('ANY_PERSON',            'cross_sector',   'Any Person',             'Catch-all where regulation applies broadly with no actor limitation')
ON CONFLICT (code) DO NOTHING;

-- =====================================================================
-- obligation_type_definitions
-- Operational definitions of the obligation_type enum values
-- =====================================================================
CREATE TABLE IF NOT EXISTS obligation_type_definitions (
    code                        TEXT PRIMARY KEY,
    display_name                TEXT NOT NULL,
    description                 TEXT NOT NULL,
    evidence_collection_pattern TEXT,                           -- how Sentainel collects evidence for this type
    sales_positioning           TEXT
);

INSERT INTO obligation_type_definitions (code, display_name, description, evidence_collection_pattern) VALUES
    ('DISCLOSE',              'Disclosure',           'Must inform a party of a fact (AI use, automated decision, etc.)', 'Capture disclosure delivery: timestamp, content shown, recipient acknowledgment'),
    ('PROHIBIT',              'Prohibition',          'Must not engage in a specified act',                                'Negative evidence: document controls preventing the prohibited act + monitoring log'),
    ('DOCUMENT',              'Documentation',        'Must produce or maintain a specific document',                      'Versioned document repository with audit trail'),
    ('IMPLEMENT_CONTROL',     'Implement Control',    'Must have a technical or organizational safeguard in place',        'Control inventory with implementation evidence (config, policy, test results)'),
    ('NOTIFY_AUTHORITY',      'Notify Authority',     'Must report to a regulator within a deadline',                      'Notification queue with deadline tracking and submission receipts'),
    ('RETAIN_RECORDS',        'Retain Records',       'Must retain specified records for a period',                        'Records inventory with retention schedule enforcement'),
    ('REPORT',                'Report',               'Must produce a periodic or event-driven report',                    'Report templates + scheduled generation + audit log'),
    ('CONDUCT_ASSESSMENT',    'Conduct Assessment',   'Must perform a PIA, AIA, DPIA, or similar before deployment',       'Assessment workflow with sign-offs and refresh schedule'),
    ('OBTAIN_CONSENT',        'Obtain Consent',       'Must obtain specific consent before processing',                    'Consent vault with granular preference tracking'),
    ('GRANT_RIGHT',           'Grant Right',          'Must provide a data subject right (access, erasure, portability)',  'Rights request intake + workflow + response SLA tracking'),
    ('DESIGNATE_ROLE',        'Designate Role',       'Must appoint a specific role (DPO, privacy officer)',               'Role assignment with public disclosure'),
    ('CONTRACT_REQUIREMENT',  'Contract Requirement','Must include specified clauses in third-party agreements',          'Contract template library with clause coverage analysis')
ON CONFLICT (code) DO NOTHING;
