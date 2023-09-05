-- CreateTable
CREATE TABLE `Orden` (
    `OrdenID` INTEGER NOT NULL AUTO_INCREMENT,
    `Nombre` VARCHAR(191) NOT NULL,
    `Fecha` VARCHAR(191) NOT NULL,
    `Total` DOUBLE NOT NULL,
    `Pedido` JSON NOT NULL,

    PRIMARY KEY (`OrdenID`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
