-- CreateTable
CREATE TABLE `Producto` (
    `ProductoID` INTEGER NOT NULL AUTO_INCREMENT,
    `Nombre` VARCHAR(191) NOT NULL,
    `Precio` DOUBLE NOT NULL,
    `Imagen` VARCHAR(191) NOT NULL,
    `CategoriaID` INTEGER NOT NULL,

    PRIMARY KEY (`ProductoID`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Categoria` (
    `CategoriaID` INTEGER NOT NULL AUTO_INCREMENT,
    `Nombre` VARCHAR(191) NOT NULL,
    `Icono` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`CategoriaID`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Producto` ADD CONSTRAINT `Producto_CategoriaID_fkey` FOREIGN KEY (`CategoriaID`) REFERENCES `Categoria`(`CategoriaID`) ON DELETE RESTRICT ON UPDATE CASCADE;
