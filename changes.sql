CREATE TABLE tb_EDI_order_temp3
(
    ID INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    guid_key NVARCHAR(100) NULL,
    order_no NVARCHAR(100) NULL,
    num INT(4) NULL,
    po_number NVARCHAR(600) NULL,
    factory_code NVARCHAR(100) NULL,
    order_expdate NVARCHAR(100) NULL,
    invoice_cpyname NVARCHAR(510) NULL,
    invoice_addr TEXT NULL,
    invoice_email TEXT NULL,
    invoice_contact TEXT NULL,
    invoice_phone NVARCHAR(400) NULL,
    invoice_fax NVARCHAR(100) NULL,
    delivery_cpyname NVARCHAR(510) NULL,
    delivery_addr TEXT NULL,
    delivery_email TEXT NULL,
    delivery_contact NVARCHAR(400) NULL,
    delivery_phone NVARCHAR(400) NULL,
    delivery_fax NVARCHAR(100) NULL,
    item_ref1 NVARCHAR(300) NULL,
    item_ref2 NVARCHAR(300) NULL,
    item_ref3 NVARCHAR(300) NULL,
    item_ref4 NVARCHAR(300) NULL,
    item_ref5 NVARCHAR(300) NULL,
    item_ref6 NVARCHAR(300) NULL,
    item_ref7 NVARCHAR(300) NULL,
    item_ref8 NVARCHAR(300) NULL,
    item_ref9 NVARCHAR(300) NULL,
    style_number NVARCHAR(100) NULL,
    coo TEXT NULL,
    season_code NVARCHAR(100) NULL,
    colour NVARCHAR(300) NULL,
    gender NVARCHAR(300) NULL,
    remark TEXT NULL,
    content_number NVARCHAR(100) NULL,
    size_matrix_type NVARCHAR(400) NULL,
    size_content TEXT NULL,
    total_qty  NVARCHAR(100) NULL,
    artwork_number  NVARCHAR(100) NULL,
    brandid  NVARCHAR(300) NULL,
    order_user  NVARCHAR(100) NULL,
    order_date DATETIME(6) NULL,
    order_confirm_date DATETIME(6) NULL,
    is_draft   NVARCHAR(100) NULL,
    total_qty1  NVARCHAR(100) NULL,
    total_qty2  NVARCHAR(100) NULL,
    total_qty3  NVARCHAR(100) NULL,
    total_qty4  NVARCHAR(100) NULL,
    total_qty5  NVARCHAR(100) NULL,
    total_qty6  NVARCHAR(100) NULL,
    total_qty7  NVARCHAR(100) NULL,
    total_qty8  NVARCHAR(100) NULL,
    total_qty9  NVARCHAR(100) NULL,
    F1 TEXT NULL,
    F2 TEXT NULL,
    F3 TEXT NULL,
    F4 TEXT NULL,
    F5 TEXT NULL,
    F6 TEXT NULL,
    F7 TEXT NULL,
    F8 TEXT NULL,
    F9 TEXT NULL,
    F10  TEXT NULL,
    F11  TEXT NULL,
    F12  TEXT NULL,
    F13  TEXT NULL,
    F14  TEXT NULL,
    F15  TEXT NULL,
    F16  TEXT NULL,
    F17  TEXT NULL,
    F18  TEXT NULL,
    F19  TEXT NULL,
    F20  TEXT NULL,
    F21  TEXT NULL,
    F22  TEXT NULL,
    F23  TEXT NULL,
    F24  TEXT NULL,
    F25  TEXT NULL,
    F26  TEXT NULL,
    F27  TEXT NULL,
    F28  TEXT NULL,
    F29  TEXT NULL,
    F30  TEXT NULL,
    A_Content_Number NVARCHAR(100) NULL,
    B_Content_Number NVARCHAR(100) NULL,
    C_Content_Number NVARCHAR(100) NULL,
    invoice_addr2 TEXT NULL,
    invoice_addr3 TEXT NULL,
    delivery_city NVARCHAR(200) NULL,
    delivery_country NVARCHAR(200) NULL,
    delivery_post_code NVARCHAR(200) NULL,
    delivery_addr2 TEXT NULL,
    delivery_addr3 TEXT NULL,
    size_pointer VARCHAR(200) NULL,
    size_content1 TEXT NULL,
    size_content2 TEXT NULL,
    size_content3 TEXT NULL,
    size_content4 TEXT NULL,
    size_content5 TEXT NULL,
    size_content6 TEXT NULL,
    size_content7 TEXT NULL,
    size_content8 TEXT NULL,
    size_content9 TEXT NULL,
    size_content10 TEXT NULL,
    size_matrix_type1 NVARCHAR(400) NULL,
    size_matrix_type2 NVARCHAR(400) NULL,
    size_matrix_type3 NVARCHAR(400) NULL,
    size_matrix_type4 NVARCHAR(400) NULL,
    size_matrix_type5 NVARCHAR(400) NULL,
    size_matrix_type6 NVARCHAR(400) NULL,
    size_matrix_type7 NVARCHAR(400) NULL,
    size_matrix_type8 NVARCHAR(400) NULL,
    size_matrix_type9 NVARCHAR(400) NULL,
    size_matrix_type10 NVARCHAR(400) NULL,
    LocationCode TEXT NULL,
    Price1  NVARCHAR(40) NULL,
    Price2  NVARCHAR(40) NULL,
    Price3  NVARCHAR(40) NULL,
    Price4  NVARCHAR(40) NULL,
    Price5  NVARCHAR(40) NULL,
    Price6  NVARCHAR(40) NULL,
    Price7  NVARCHAR(40) NULL,
    Price8  NVARCHAR(40) NULL,
    Price9  NVARCHAR(40) NULL,
    currency1 VARCHAR(40) NULL,
    currency2 VARCHAR(40) NULL,
    currency3 VARCHAR(40) NULL,
    currency4 VARCHAR(40) NULL,
    currency5 VARCHAR(40) NULL,
    currency6 VARCHAR(40) NULL,
    currency7 VARCHAR(40) NULL,
    currency8 VARCHAR(40) NULL,
    currency9 VARCHAR(40) NULL,
    SumPrice VARCHAR(40) NULL,
    A_Preview TEXT NULL,
    B_Preview TEXT NULL,
    C_Preview TEXT NULL,
    AWExcel_Path VARCHAR(200) NULL,
    ShrinkagePorcentaje INT(4) NULL,
    DefaultSizeContent TEXT NULL,
    DraftOrderEmail NVARCHAR(400) NULL,
    IsWastage NVARCHAR(100) NULL,
    UpdateUser NVARCHAR(100) NULL,
    UpdateDate DATETIME(6) NULL,
    IsSendDrafEmail VARCHAR(30) NULL,
    AwReportFTPStatus NVARCHAR(20) NULL,
    OrderApiStatus CHAR(20) NULL,
    TrackingStatus NVARCHAR(100) NULL,
    item_ref10 NVARCHAR(300) NULL,
    total_qty10 NVARCHAR(100) NULL,
    Price10 NVARCHAR(40) NULL,
    currency10 NVARCHAR(40) NULL,
    EdiOrderNo NVARCHAR(100) NULL,
    Consolidated_ID NVARCHAR(100) NULL,
    Supplier_Code NVARCHAR(100) NULL,
    Send_Date NVARCHAR(100) NULL,
    Product_Description NVARCHAR(400) NULL,
    IsCopyOrder CHAR(30) NULL,
    AllowConfirmOrderDate NVARCHAR(100) NULL,
    SizeTableImg NVARCHAR(200) NULL,
    SizeContentNoMerged TEXT NULL,
    ArtWorkStatus CHAR(10) NULL,
    RePrintNum INT(4) NULL,
    RePrintedNum INT(4) NULL,
    RevNo INT(4) NULL,
    PDFCheckStatus CHAR(41) NULL,
    PoLastUpdateTime NVARCHAR(40) NULL,
    OptionId NVARCHAR(100) NULL,
    LeanAwReportFTPStatus CHAR(1) NULL,
    Order_Encryption NVARCHAR(100) NULL,
    AwXmlStatus NVARCHAR(400) NULL,
    qr_link TEXT NULL,
    EPCStatus NVARCHAR(400) NULL,
    FtpEcpStatus VARCHAR(100) NULL,
    FtpTidStatus VARCHAR(100) NULL,
    TempKey NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    QRPDFStatus CHAR(1) NULL,
    IntegrationXmlStatus  NVARCHAR(2) NULL,
    IntegrationXmlNum INT(4) NULL,
    CustomerId NVARCHAR(100) NULL,
    InvoiceAddressId NVARCHAR(100) NULL,
    InvoiceContactId NVARCHAR(100) NULL,
    DeliveryAddressId NVARCHAR(100) NULL,
    DeliveryContactId NVARCHAR(100) NULL,
    ERPEntityID NVARCHAR(100) NULL,
    MyAtexControl NVARCHAR(100) NULL
);

DESC tb_EDI_order_temp3;
