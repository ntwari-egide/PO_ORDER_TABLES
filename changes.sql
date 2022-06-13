CREATE TABLE tb_order_edi_Temp2
(
    ID INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    guid_key NVARCHAR(100) NULL,
    order_no NVARCHAR(100) NULL,
    Consolidated_ID NVARCHAR(100) NULL,
    Product_Description NVARCHAR(100) NULL,
    Supplier_Code NVARCHAR(100) NULL,
    Factory_Code NVARCHAR(100) NULL,
    size_matrix_type NVARCHAR(100) NULL,
    size_content NVARCHAR(100) NULL,
    total_qty NVARCHAR(100) NULL,
    brandid NVARCHAR(100) NULL,
    Send_Date NVARCHAR(100) NULL,
    imported_date DATETIME(6) NULL,
    status_date DATETIME(6) NULL,
    status INT(4) NULL,
    DefaultSizeContent TEXT NULL,
    F1 TEXT NULL,
    F2 TEXT NULL,
    F3 TEXT NULL,
    F4 TEXT NULL,
    F5 TEXT NULL,
    F6 TEXT NULL,
    F7 TEXT NULL,
    F8 TEXT NULL,
    F9 TEXT NULL,
    F10 TEXT NULL,
    F11 TEXT NULL,
    F12 TEXT NULL,
    F13 TEXT NULL,
    F14 TEXT NULL,
    F15 TEXT NULL,
    F16 TEXT NULL,
    F17 TEXT NULL,
    F18 TEXT NULL,
    F19 TEXT NULL,
    F20 TEXT NULL,
    F21 TEXT NULL,
    F22 TEXT NULL,
    F23 TEXT NULL,
    F24 TEXT NULL,
    F25 TEXT NULL,
    F26 TEXT NULL,
    F27 TEXT NULL,
    F28 TEXT NULL,
    F29 TEXT NULL,
    F30 TEXT NULL,
    num INT(4) NULL,
    OptionId NVARCHAR(100) NULL,
    item_ref1 NVARCHAR(300) NULL,
    item_ref2 NVARCHAR(300) NULL,
    item_ref3 NVARCHAR(300) NULL,
    item_ref4 NVARCHAR(300) NULL,
    item_ref5 NVARCHAR(300) NULL,
    item_ref6 NVARCHAR(300) NULL,
    item_ref7 NVARCHAR(300) NULL,
    item_ref8 NVARCHAR(300) NULL,
    item_ref9 NVARCHAR(300) NULL,
    item_ref10 NVARCHAR(300) NULL,
    total_qty1 TEXT NULL,
    total_qty2 TEXT NULL,
    total_qty3 TEXT NULL,
    total_qty4 TEXT NULL,
    total_qty5 TEXT NULL,
    total_qty6 TEXT NULL,
    total_qty7 TEXT NULL,
    total_qty8 TEXT NULL,
    total_qty9 TEXT NULL,
    total_qty10 TEXT NULL,
    ConfirmDate DATETIME(6) NULL,
    PoLastUpdateTime NVARCHAR(40) NULL
);

DESC tb_order_edi_Temp2;

INSERT INTO 
(
    guid_key,
    order_no,
    Consolidated_ID,
    Product_Description,
    Supplier_Code,
    Factory_Code,
    size_matrix_type,
    size_content,
    total_qty,
    brandid,
    Send_Date,
    imported_date,
    status_date,
    status,
    DefaultSizeContent,
    F1,
    F2,
    F3,
    F4,
    F5,
    F6,
    F7,
    F8,
    F9,
    F10,
    F11,
    F12,
    F13,
    F14,
    F15,
    F16,
    F17,
    F18,
    F19,
    F20,
    F21,
    F22,
    F23,
    F24,
    F25,
    F26,
    F27,
    F28,
    F29,
    F30,
    num,
    OptionId,
    item_ref1,
    item_ref2,
    item_ref3,
    item_ref4,
    item_ref5,
    item_ref6,
    item_ref7,
    item_ref8,
    item_ref9,
    item_ref10,
    total_qty1,
    total_qty2,
    total_qty3,
    total_qty4,
    total_qty5,
    total_qty6,
    total_qty7,
    total_qty8,
    total_qty9,
    total_qty10,
    ConfirmDate,
    PoLastUpdateTime
)
VALUES
(
    guid_key
    order_no
    Consolidated_ID
    Product_Description
    Supplier_Code
    Factory_Code
    size_matrix_type
    size_content
    total_qty
    brandid
    Send_Date
    imported_date
    status_date
    status
    DefaultSizeContent
    F1
    F2
    F3
    F4
    F5
    F6
    F7
    F8
    F9
    F10
    F11
    F12
    F13
    F14
    F15
    F16
    F17
    F18
    F19
    F20
    F21
    F22
    F23
    F24
    F25
    F26
    F27
    F28
    F29
    F30
    num
    OptionId
    item_ref1
    item_ref2
    item_ref3
    item_ref4
    item_ref5
    item_ref6
    item_ref7
    item_ref8
    item_ref9
    item_ref10
    total_qty1
    total_qty2
    total_qty3
    total_qty4
    total_qty5
    total_qty6
    total_qty7
    total_qty8
    total_qty9
    total_qty10
    ConfirmDate
    PoLastUpdateTime
);


