DROP TABLE IF EXISTS `topic`;

CREATE TABLE IF NOT EXISTS `topic`  (
  `id` bigint(21) NOT NULL,
  `tenant_id` bigint(21) NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NULL,
  `status` varchar(20),
  `create_date` datetime NOT NULL,
  `update_date` datetime NULL,
  `internal_identifier` varchar(50) NULL,
  PRIMARY KEY (`id`)
);


ALTER TABLE `topic`
ADD CONSTRAINT IF NOT EXISTS unique_name_per_tenant UNIQUE (name, tenant_id);

CREATE SEQUENCE IF NOT EXISTS sequence_topic
INCREMENT BY 1
START WITH 100000;

INSERT INTO TOPIC (`id`, `tenant_id`, `name`, `description`, `status`,`create_date`)
                  VALUES (1, '1', 'a topic', 'description', 'ACTIVE','2022-06-02');

INSERT INTO TOPIC (`id`, `tenant_id`, `name`, `description`, `status`, `create_date`)
                  VALUES (2, '2', 'another topic', 'description', 'ACTIVE', '2022-06-02');
