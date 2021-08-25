CREATE TABLE `permissions`
(
    `level`       INT NOT NULL,
    `description` VARCHAR(255),
    PRIMARY KEY (`level`)
);

INSERT INTO permissions (1, "student permissions"),(2, "commander permissions"),(3,"makas permissions"),(4, "mate"),(5,"admin");

CREATE TABLE `subjects`
(
    `courseId` INT NOT NULL AUTO_INCREMENT,
    `subject`  VARCHAR(255),
    PRIMARY KEY (`courseId`)
);

