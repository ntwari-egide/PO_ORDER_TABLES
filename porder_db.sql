CREATE DATABASE PO_ORDER_DB;

USE PO_ORDER_DB;

CREATE TABLE A01_Logging(
    Log_ID BIGINT(19) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Log_Type NVARCHAR(400) NULL,
    Log_Category NVARCHAR(400) NULL,
    Log_User NVARCHAR(400) NULL,
    Log_Time TIMESTAMP(6) NULL,
    Log_Page TEXT NULL,
    Log_Call_From TEXT NULL,
    Log_Method_Name TEXT NULL,
    Log_Short_FilePath TEXT NULL,
    Log_FilePath_LineNumber TEXT NULL,
    Log_FilePath TEXT NULL,
    Log_Remarks TEXT NULL,
    Log_Execution_Start_Time TIMESTAMP NULL,
    Log_Execution_End_Time TIMESTAMP NULL,
    Log_Execution_Time_Spent TEXT NULL,
    Log_Message TEXT NULL,
    Log_Related_Developer TEXT NULL,
    Log_User_Host_Address NVARCHAR(20) NULL
);

DESC A01_Logging;

INSERT INTO A01_Logging
(
    Log_Type,
    Log_Category,
    Log_User,
    Log_Time,
    Log_Page,
    Log_Call_From,
    Log_Method_Name,
    Log_Short_FilePath,
    Log_FilePath_LineNumber,
    Log_FilePath,
    Log_Remarks,
    Log_Execution_Start_Time,
    Log_Execution_End_Time,
    Log_Execution_Time_Spent,
    Log_Message,
    Log_Related_Developer,
    Log_User_Host_Address
) VALUES 
(
    'Making changes',
     "System warning",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "Welcome dashboard",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Character encoding error",
    "Joe Doe",
    "localhost"
),
(
    'Updated order',
     "Success",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "Orders page",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Character encoding error",
    "Joe Doe",
    "localhost"
),
(
    'Created order',
     "Success",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "orders form",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Created order",
    "Joe Doe",
    "localhost"
),
(
    'No items found',
     "System warnings",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "dashboard",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Character encoding warning",
    "Joe Doe",
    "localhost"
),
(
    'Caching',
     "Error",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "Orders page",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Character encoding error",
    "Joe Doe",
    "localhost"
),
(
    'Created order',
     "Success",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "orders form",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Created order",
    "Joe Doe",
    "localhost"
);


CREATE TABLE A01_Logging_Email_Queue(
    Logging_Email_ID int(4) AUTO_INCREMENT not null primary key,
    Logging_Email_To TEXT(16) NULL,
    Logging_Email_Content TEXT(16) NULL,
    Logging_Email_Status NVARCHAR(100) NULL,
    Logging_Email_Sent_Date DATETIME(6) NULL
);
INSERT INTO
    A01_Logging_Email_Queue(
        Logging_Email_To,
        Logging_Email_Content,
        Logging_Email_Status,
        Logging_Email_Sent_Date
    )
VALUES
    (
        "gersh@gmail.com",
        "Payment is done",
        "Active",
        NOW()
    ),
    (
        "kareem@gmail.com",
        "order delivered",
        "Active",
        "2021-07-13"
    ),
    (
        "mario@po.com",
        "Mario 83dh32k42h5ng2",
        "Not active",
        "2020-07-21"
    ),
    (
        "mautice@fw.com",
        "purchase request approved",
        "Active",
        "2020-05-21"
    ),
    (
        "dyba@yahoo.com",
        "order done",
        "Active",
        "2020-05-21"
    ),
    (
        "motinh@gmail.com",
        "email approved",
        "Not active",
        "2020-11-21"
    ),
    (
        "Marie@gmail.com",
        "",
        "Active",
        "2020-05-21"
    ),
    (
        "marvin@zoho.com",
        "order done",
        "Active",
        "2020-05-21"
    ),
    (
        "nickyashin@yahoo.com",
        "",
        "Active",
        "2021-05-30"
    ),
    (
        "daniel@aol.com",
        "Email is no longer allowed",
        "No active",
        "2020-05-21"
    );
CREATE TABLE AsosPoSizeRestoreOrder(
    BrandId NVARCHAR(100) NULL,
    OrderNo NVARCHAR(100) NULL,
    Num int(4) NULL,
    OrderKey NVARCHAR(100) NULL,
    EdiOrderNo NVARCHAR(100) NULL,
    Consolidated_ID NVARCHAR(100) NULL,
    size_matrix_type NVARCHAR(400) NULL,
    IsFindeEmail VARCHAR(1) NULL,
    IsFindePo VARCHAR(1) NULL,
    IsEmailFindePo VARCHAR(1) NULL,
    CreateTime date NULL
);
INSERT INTO
    AsosPoSizeRestoreOrder(
        BrandId,
        OrderNo,
        Num,
        OrderKey,
        EdiOrderNo,
        Consolidated_ID,
        size_matrix_type,
        IsFindeEmail,
        IsFindePo,
        IsEmailFindePo,
        CreateTime
    )
VALUES
    (
        "123",
        "10",
        4,
        "435",
        "7645342",
        "53539",
        "48876542",
        "T",
        "T",
        "F",
        NOW()
    ),
    (
        "283-047-383",
        "844-538-538",
        2,
        "9dj23k5g2",
        "030383",
        "037492",
        "94630",
        "T",
        "F",
        "F",
        "2020-02-21"
    ),
    (
        "948-939-132",
        "0373-484-32",
        5,
        "435",
        "7645342",
        "53539",
        "48876542",
        "T",
        "T",
        "F",
        "2021-07-25"
    ),
    (
        "238-423-472",
        "38932",
        4,
        "392hg3b4",
        "7847",
        "93648",
        "1384",
        "F",
        "F",
        "F",
        "2019-03-10"
    ),
    (
        "839-484-424",
        "387",
        3,
        "9ddb2n5b2",
        "098765",
        "123456",
        "6547289",
        "F",
        "T",
        "F",
        "2022-01-01"
    ),
    (
        "123-438-176",
        "273947",
        1,
        "435",
        "7645342",
        "53539",
        "036",
        "T",
        "T",
        "F",
        "2020-04-03"
    ),
    (
        "123",
        "10",
        4,
        "435",
        "7645342",
        "53539",
        "48876542",
        "T",
        "T",
        "F",
        '2019-03-30'
    ),
    (
        "933-937-986",
        "938764",
        4,
        "03834",
        "294",
        "9450",
        "3840",
        "T",
        "T",
        "T",
        NOW()
    ),
    (
        "123",
        "10",
        4,
        "435",
        "7645342",
        "53539",
        "48876542",
        "T",
        "T",
        "F",
        NOW()
    ),
    (
        "123",
        "10",
        4,
        "435",
        "7645342",
        "53539",
        "48876542",
        "T",
        "T",
        "F",
        NOW()
    );

CREATE TABLE AsosPoSizeRestoreOrderError(
    BrandId NVARCHAR(100) NOT NULL PRIMARY KEY,
    OrderNo NVARCHAR(100) NULL,
    Num INT(4) NULL,
    OrderDate DATETIME(6) NULL,
    ConfirmDate DATETIME(6) NULL,
    IsCopyOrder NVARCHAR(4) NULL,
    UserId NVARCHAR(100) NULL,
    UserPwd NVARCHAR(100) NULL,
    LocationCode NVARCHAR(100) NULL,
    EdiOrderNo NVARCHAR(100) NULL,
    IsFindeEmail VARCHAR(1) NULL,
    IsFindePo VARCHAR(1) NULL
);


DESC AsosPoSizeRestoreOrderError;

INSERT INTO AsosPoSizeRestoreOrderError
VALUES
(
    "22333",
    "4535943",
    5,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXW+HR8, Kigali",
    "3242343",
    "Y",
    "Y"
),
(
    "22345",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "22322",
    "4535943",
    3,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "245245",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "24523",
    "4535943",
    5,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXW+HR8, Kigali",
    "3242343",
    "Y",
    "Y"
),
(
    "245243",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "34533",
    "4535943",
    3,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "35345",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "34534",
    "4535943",
    5,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXW+HR8, Kigali",
    "3242343",
    "Y",
    "Y"
),
(
    "34523",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "53454",
    "4535943",
    3,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "6244",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
);


CREATE TABLE informationprompt(
    information INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    VersionNumber NVARCHAR(80) NOT NULL,
    Content NVARCHAR(400) NOT NULL,
    Creaperson NVARCHAR(40) NULL,
    CreateTime DATETIME(6) NULL
);

DESC informationprompt;

INSERT INTO informationprompt
(
    VersionNumber,
    Content,
    Creaperson,
    CreateTime
)

VALUES 
(
    "344353543",
    "Validate user",
    "823942"
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Check login please!",
    "3424234",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Verify your email",
    "823942"
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Check account code on email",
    "3424234",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "You need to select items, first",
    "3345354",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Validate user",
    "823942"
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Check login please!",
    "3424234",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Verify your email",
    "823942"
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Check account code on email",
    "3424234",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "You need to select items, first",
    "3345354",
    "2022-08-19 09:14:07"
)
;

CREATE TABLE ItemMappingIdTemp
(
    ID INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    brand_name NVARCHAR(255) NULL,
    item_ref NVARCHAR(255) NULL,
    New_Brand_Name NVARCHAR(255) NULL,
    Bestseller NVARCHAR(255) NULL
);

DESC ItemMappingIdTemp;

INSERT INTO ItemMappingIdTemp
(
    brand_name,
    item_ref,
    New_Brand_Name,
    Bestseller
)
VALUES 
(
    "AUDI",
    "324892",
    "AUDI NEW BRAND",
    "Joe Dan Models"
),
(
    "BMW",
    "324892",
    "BMW NEW BRAND",
    "Joe Dan Models"
),
(
    "TESLA",
    "324892",
    "TESLA NEW BRAND",
    "Joe Dan Models"
),
(
    "AUDI",
    "32424",
    "AUDI NEW BRAND",
    "Joe Dan Models"
),
(
    "MERCENDENZ BENZ",
    "324892",
    "NENZ 3453",
    "Joe Dan Models"
),
(
    "AUDI",
    "324892",
    "AUDI NEW BRAND",
    "Joe Dan Models"
),
(
    "BMW",
    "324892",
    "BMW NEW BRAND",
    "Joe Dan Models"
),
(
    "TESLA",
    "324892",
    "TESLA NEW BRAND",
    "Joe Dan Models"
),
(
    "AUDI",
    "32424",
    "AUDI NEW BRAND",
    "Joe Dan Models"
),
(
    "MERCENDENZ BENZ",
    "324892",
    "NENZ 3453",
    "Joe Dan Models"
);

CREATE TABLE OrderTemp_Cjm
(
    ID INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    order_no NVARCHAR(100) NULL,
    num INT(10) NULL,
    size_content1 NVARCHAR(255) NULL,
    order_date DATETIME(6) NULL,
    order_user NVARCHAR(100) NULL
);

DESC OrderTemp_Cjm;

INSERT INTO OrderTemp_Cjm
(
    order_no,
    num,
    size_content1,
    order_date,
    order_user
)
VALUES 
(
    "2342342"
    23,
    "SMALL",
    "2022-06-19 09:14:07",
    "2342323"
),
(
    "2342342"
    45,
    "LARGE",
    "2022-04-19 09:14:07",
    "5646454"
),
(
    "2342342"
    12,
    "MEDIUM",
    "2022-08-19 09:14:07",
    "2342323"
),
(
    "4535344",
    65,
    "SMALL",
    "2022-06-19 09:14:07",
    "2342323"
),
(
    "2342342"
    23,
    "SMALL",
    "2022-06-19 09:14:07",
    "2342323"
),
(
    "2342342"
    45,
    "LARGE",
    "2022-04-19 09:14:07",
    "5646454"
),
(
    "2342342"
    12,
    "MEDIUM",
    "2022-09-19 09:14:07",
    "2342323"
),
(
    "4535344",
    65,
    "SMALL",
    "2022-06-08 09:14:07",
    "2342323"
),
(
    "2342342"
    12,
    "MEDIUM",
    "2022-09-19 09:14:07",
    "2342323"
),
(
    "4535344",
    65,
    "SMALL",
    "2022-06-08 09:14:07",
    "2342323"
)
;

CREATE TABLE sys_feedbackInfo
(
    ID INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Brand NVARCHAR(100) NOT NULL,
    UserName NVARCHAR(100) NOT NULL,
    submitDate DATETIME(6) NOT NULL,
    IPAddress NVARCHAR(60) NOT NULL,
    feedbackItem NVARCHAR(100) NOT NULL,
    feedbackInfo NVARCHAR(400) NULL
);

DESC sys_feedbackInfo;

INSERT INTO sys_feedbackInfo
(
    Brand,
    UserName,
    submitDate,
    IPAddress,
    feedbackItem,
    feedbackInfo
)
VALUES
(
    "AUDI",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.32",
    "Car Feedback",
    "Please check to your nearby car sellling point"
),
(
    "TESLA",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "Car Feedback",
    "Please check to your nearby car sellling tesla point"
),
(
    "BENZ",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "Benz Feedback",
    "Please check to your nearby car sellling benz point"
),
(
    "BMW",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "BMW Feedback",
    "Please check to your nearby car sellling BMW point"
),
(
    "TOYOTA",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "TOYOTA Feedback",
    "Please check to your nearby car sellling Toyota point"
),
(
    "AUDI",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.32",
    "Car Feedback",
    "Please check to your nearby car sellling point"
),
(
    "TESLA",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "Car Feedback",
    "Please check to your nearby car sellling tesla point"
),
(
    "BENZ",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "Benz Feedback",
    "Please check to your nearby car sellling benz point"
),
(
    "BMW",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "BMW Feedback",
    "Please check to your nearby car sellling BMW point"
),
(
    "TOYOTA",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "TOYOTA Feedback",
    "Please check to your nearby car sellling Toyota point"
)
;


CREATE TABLE sys_feedbackItem
(
    ID INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    feedback NVARCHAR(400) NOT NULL,
    translateEn NVARCHAR(400) NOT NULL,
    display NVARCHAR(20) NOT NULL,
    CreateTime DATETIME(6) NULL
);

DESC sys_feedbackItem;

INSERT INTO sys_feedbackItem
(
    feedback,
    translateEn,
    display,
    CreateTime
)
VALUES
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单已确认",
    "Your order is confirmed",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单被公司品牌拒绝",
    "Your order is rejected by company brand",
    "ON_DRAW",
    "2022-06-08 09:14:07"
),
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_DRAWER",
    "2022-06-08 09:14:07"
),
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单已确认",
    "Your order is confirmed",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单被公司品牌拒绝",
    "Your order is rejected by company brand",
    "ON_DRAW",
    "2022-06-08 09:14:07"
),
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_DRAWER",
    "2022-06-08 09:14:07"
),
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单已确认",
    "Your order is confirmed",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单被公司品牌拒绝",
    "Your order is rejected by company brand",
    "ON_DRAW",
    "2022-06-08 09:14:07"
),
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_DRAWER",
    "2022-06-08 09:14:07"
);


CREATE TABLE sysdiagrams
(
    ID INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name NVARCHAR(256) NOT NULL,
    principal_id INT (4) NOT NULL,
    diagram_id INT(4) NOT NULL,
    version INT(4) NULL,
    definition VARBINARY(255) NULL
);

DESC sysdiagrams;

INSERT INTO sysdiagrams
(
    name,
    principal_id,
    diagram_id,
    version,
    definition
)
VALUES
(
    "Order form request diagram",
    123,
    234,
    23,
    "A diagram describing how order form request must be implemented"
),
(
    "Order confirmation diagram",
    123,
    435,
    2,
    "A diagram describing how order confirmation must be implemented"
),
(
    "Order form request diagram",
    54,
    43,
    12,
    "A diagram describing how order form request must be implemented"
),
(
    "Payment implementation Diagram",
    234,
    234,
    23,
    "A diagram describing how Payment must be implemented"
),
(
    "Order form request diagram",
    123,
    234,
    23,
    "A diagram describing how order form request must be implemented"
),
(
    "Order form request diagram",
    123,
    234,
    23,
    "A diagram describing how order form request must be implemented"
),
(
    "Order confirmation diagram",
    123,
    435,
    2,
    "A diagram describing how order confirmation must be implemented"
),
(
    "Order form request diagram",
    54,
    43,
    12,
    "A diagram describing how order form request must be implemented"
),
(
    "Payment implementation Diagram",
    234,
    234,
    23,
    "A diagram describing how Payment must be implemented"
),
(
    "Order form request diagram",
    123,
    234,
    23,
    "A diagram describing how order form request must be implemented"
);


CREATE TABLE tb_adminrecord
(
    AdrecordID INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Title TEXT NOT NULL,
    Createperson TEXT NOT NULL,
    Createtime TEXT NOT NULL,
    DeptName TEXT NOT NULL,
    Content TEXT NOT NULL,
    Starttime TEXT NOT NULL,
    Endtime TEXT NOT NULL,
    State NVARCHAR(40) NOT NULL   
);

DESC tb_adminrecord;

INSERT INTO tb_adminrecord
(
    Title,
    Createperson,
    Createtime,
    DeptName,
    Content,
    Starttime,
    Endtime,
    State   
)
VALUES
(
    "Customs records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Work permits",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Population records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Customs records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Tax records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Work permits",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Population records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Customs records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Work permits",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Population records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
);

CREATE TABLE tb_adminrecordes
(
    AdrecordID INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    ClientID TEXT NOT NULL,
    Title TEXT NOT NULL,
    Createtime TEXT NOT NULL,
    Brandbinding TEXT NOT NULL,
    Content TEXT NOT NULL,
    State TEXT NOT NULL,
    Viewingtime TEXT NOT NULL
);

DESC tb_adminrecordes;

INSERT INTO tb_adminrecordes
(
    ClientID,
    Title,
    Createtime,
    Brandbinding,
    Content,
    State,
    Viewingtime
)
VALUES
(
    "2342343",
    "Paid customers",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "53435",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "42523",
    "Paid customers",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "2342343",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "345344",
    "Paid customers",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "345354",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "53435",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "42523",
    "Paid customers",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "2342343",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "345344",
    "Paid customers",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "345354",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
);

CREATE TABLE tb_API_Cust
(
    ID INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Code NVARCHAR(100) NULL,
    CustomerName NVARCHAR(100) NULL,
    LoginID NVARCHAR(100) NULL,
    Password NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    CreateBy NVARCHAR(100) NULL
);

DESC tb_API_Cust;

INSERT INTO tb_API_Cust
(
    Code,
    CustomerName,
    LoginID,
    Password,
    CreateDate,
    CreateBy
)
VALUES
(
    "CUST234",
    "Joe Doe",
    "Joe",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST235",
    "Alexandra",
    "Alexandra",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST236",
    "Alison John",
    "Alison",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST237",
    "Andrea Peter",
    "Andrea",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST238",
    "Amelia",
    "Amelia",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST239",
    "Andrea",
    "Andrea",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST240",
    "Angela",
    "Angela",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST241",
    "Audrey",
    "Audrey",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST240",
    "Bernadette",
    "Bernadette",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST241",
    "Carolyn",
    "Carolyn",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
);

CREATE TABLE tb_API_Cust_delivery_addr
(
    ID INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Code NVARCHAR(100) NULL,
    CompanyName NVARCHAR(100) NULL,
    Address1 NVARCHAR(100) NULL,
    Address2 NVARCHAR(100) NULL,
    Address3 NVARCHAR(100) NULL,
    ContactPerson NVARCHAR(100) NULL,
    Phone NVARCHAR(100) NULL,
    Fax NVARCHAR(100) NULL,
    Email NVARCHAR(100) NULL,
    Country NVARCHAR(100) NULL,
    City NVARCHAR(100) NULL,
    PostCode NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    CreateBy NVARCHAR(100) NULL
);

DESC tb_API_Cust_delivery_addr;

INSERT INTO tb_API_Cust_delivery_addr
(
    Code,
    CompanyName,
    Address1,
    Address2,
    Address3,
    ContactPerson,
    Phone,
    Fax,
    Email,
    Country,
    City,
    PostCode,
    CreateDate,
    CreateBy
)
VALUES
(
    "234234",
    "Kosovo Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Kigali Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Yombi Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Kosovo Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Kigali Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Yombi Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Kosovo Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Kigali Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Yombi Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
);

CREATE TABLE tb_API_Cust_invoice_addr
(
    ID INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Code NVARCHAR(100) NULL,
    CompanyName NVARCHAR(100) NULL,
    Address1 NVARCHAR(400) NULL,
    Address2 NVARCHAR(400) NULL,
    Address3 NVARCHAR(400) NULL,
    ContactPerson NVARCHAR(400) NULL,
    Phone NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    CreateBy NVARCHAR(100) NULL
);

DESC tb_API_Cust_invoice_addr;

INSERT INTO tb_API_Cust_invoice_addr
(
    Code,
    CompanyName,
    Address1,
    Address2,
    Address3,
    ContactPerson,
    Phone,
    CreateDate,
    CreateBy
)
VALUES
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "BK Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "Pivot Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "BK Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "Pivot Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "BK Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "Pivot Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
);

CREATE TABLE tb_API_Item
(
    ApiId INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    ItemCode NVARCHAR(400) NULL,
    ItemName NVARCHAR(400) NULL,
    RetailerCode NVARCHAR(100) NULL,
    RetailerName NVARCHAR(100) NULL,
    ItemType NVARCHAR(100) NULL,
    ArtWorkThumbnailFile NVARCHAR(400) NULL,
    erp_item_code NVARCHAR(100) NULL,
    BrandName NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL
);

DESC tb_API_Item;

INSERT INTO tb_API_Item
(
    ItemCode,
    ItemName,
    RetailerCode,
    RetailerName,
    ItemType,
    ArtWorkThumbnailFile,
    erp_item_code,
    BrandName,
    CreateDate
)
VALUES
(
    "MACBOOK23423",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "MACBOOK65465",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "DELLVESTRO4535",
    "Dell Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "HPComputers3453",
    "Hp Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "MACBOOK23423",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "MACBOOK65465",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "DELLVESTRO4535",
    "Dell Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "HPComputers3453",
    "Hp Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "MACBOOK23423",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "MACBOOK65465",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "DELLVESTRO4535",
    "Dell Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "HPComputers3453",
    "Hp Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
);


CREATE TABLE tb_API_ItemNotAppro
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    ItemName NVARCHAR(100) NULL,
    ItemStatus NVARCHAR(100) NULL,
    PostDate DATETIME(6) NULL
);

DESC tb_API_ItemNotAppro;

INSERT INTO tb_API_ItemNotAppro
(
    ItemName,
    ItemStatus,
    PostDate
)
VALUES
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "DELL",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "HP computer",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "PRINTER",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "DELL",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "HP computer",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "PRINTER",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "DELL",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "HP computer",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "PRINTER",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
);

CREATE TABLE tb_API_Module_Type
(
    ApiModuleTypeId VARCHAR(50) NOT NULL PRIMARY KEY,
    ApiModuleType NVARCHAR(100) NULL
);

DESC tb_API_Module_Type;

INSERT INTO tb_API_Module_Type
VALUES
(
    "65634563",
    "Confirm order"
),
(
    "56356",
    "Deliver order"
),
(
    "345353",
    "Porder"
),
(
    "345344",
    "Confirm order"
),
(
    "435356",
    "Deliver order"
),
(
    "647657",
    "Porder"
),
(
    "454563",
    "Confirm order"
),
(
    "356434",
    "Deliver order"
),
(
    "564356",
    "Porder"
);

CREATE TABLE tb_API_Sizetable
(
    ApiId INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    SizeTableName NVARCHAR(400) NULL,
    SizeTableContent NVARCHAR(255) NULL,
    CreateDate DATETIME(6) NULL,
    erp_item_code NVARCHAR(255) NULL
);

DESC tb_API_Sizetable;

INSERT INTO tb_API_Sizetable
(
    SizeTableName,
    SizeTableContent,
    CreateDate,
    erp_item_code 
)
VALUES
(
    "SizeTableName",
    "SizeTableContent",
    "2022-05-08 09:14:07",
    "3453245" 
),
(
    "Ordered items",
    "SizeTableContent",
    "2022-05-08 09:14:07",
    "3453245"  
),
(
    "Ordered items",
    "All ordered items",
    "2022-05-08 09:14:07",
    "3453245"  
);

CREATE TABLE tb_ArtworkPrintVersionHistory
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    guid_key NVARCHAR(100) NULL,
    version_number NVARCHAR(60) NULL,
    information TEXT(4000) NULL,
    others TEXT(2000) NULL,
    created_by NVARCHAR(100) NULL,
    created_date TIMESTAMP(6) NULL
);

DESC tb_ArtworkPrintVersionHistory;

INSERT INTO tb_ArtworkPrintVersionHistory
(
    guid_key,
    version_number,
    information,
    others,
    created_by,
    created_date
)
VALUES
(
    "2412341",
    "12",
    "Version for PO order delivery address",
    "Check shipping address",
    "345345",
    "2022-05-08 09:14:07"
),
(
    "2412341",
    "12",
    "Version for PO order delivery address",
    "Check shipping address",
    "345345",
    "2022-05-08 09:14:07"
),
(
    "2412341",
    "12",
    "Version for PO order delivery address",
    "Check shipping address",
    "345345",
    "2022-05-08 09:14:07"
),
(
    "2412341",
    "12",
    "Version for PO order delivery address",
    "Check shipping address",
    "345345",
    "2022-05-08 09:14:07"
);

CREATE TABLE tb_AsosOrderPoSize
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    GuidKey NVARCHAR(100) NULL,
    OrderKey NVARCHAR(100) NULL,
    BrandId NVARCHAR(100) NULL,
    EdiOrderNo NVARCHAR(100) NULL,
    ConsolidatedId NVARCHAR(100) NULL,
    SizeContent NVARCHAR(100) NULL,
    SendDate NVARCHAR(100) NULL,
    CreateDate NVARCHAR(100) NULL,
    total_qty1 NVARCHAR(100) NULL,
    total_qty2 NVARCHAR(100) NULL,
    total_qty3 NVARCHAR(100) NULL,
    total_qty4 NVARCHAR(100) NULL,
    total_qty5 NVARCHAR(100) NULL,
    total_qty6 NVARCHAR(100) NULL,
    total_qty7 NVARCHAR(100) NULL,
    total_qty8 NVARCHAR(100) NULL,
    total_qty9 NVARCHAR(100) NULL,
    total_qty10 NVARCHAR(100) NULL
);

DESC tb_AsosOrderPoSize;

INSERT INTO tb_AsosOrderPoSize
(
    GuidKey,
    OrderKey,
    BrandId,
    EdiOrderNo,
    ConsolidatedId,
    SizeContent,
    SendDate,
    CreateDate,
    total_qty1,
    total_qty2,
    total_qty3,
    total_qty4,
    total_qty5,
    total_qty6,
    total_qty7,
    total_qty8,
    total_qty9,
    total_qty10
)
VALUES
(
    "34563",
    "34525",
    "345354",
    "3543534",
    "435345",
    "SizeContent",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "21",
    "12",
    "23",
    "8",
    "34",
    "2",
    "5",
    "6",
    "12",
    "34"
),
(
    "76467",
    "34525",
    "345354",
    "3543534",
    "435345",
    "SizeContent",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "21",
    "12",
    "23",
    "8",
    "34",
    "2",
    "5",
    "6",
    "12",
    "34"
),
(
    "53665",
    "34525",
    "345354",
    "3543534",
    "435345",
    "SizeContent",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "21",
    "12",
    "23",
    "8",
    "34",
    "2",
    "5",
    "6",
    "12",
    "34"
),
(
    "7356",
    "34525",
    "345354",
    "3543534",
    "435345",
    "SizeContent",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "21",
    "12",
    "23",
    "8",
    "34",
    "2",
    "5",
    "6",
    "12",
    "34"
);

CREATE TABLE tb_AsosPo
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    PoNumber NVARCHAR(100) NULL,
    NewPoNumber NVARCHAR(100) NULL
);

DESC tb_AsosPo;

INSERT INTO tb_AsosPo
(
    PoNumber,
    NewPoNumber
)
VALUES
(
    "435345",
    "536546" 
),
(
    "76467",
    "536546" 
),
(
    "467345",
    "536546" 
),
(
    "234542",
    "536546" 
);

CREATE TABLE tb_auto_artwork_dtl
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    guid_key NVARCHAR(16) NULL,
    Artwork_Structure_XML NVARCHAR(100) NULL,
    Artwork_Data_XML NVARCHAR(100) NULL,
    isCompress NVARCHAR(100) NULL
);

DESC tb_auto_artwork_dtl;

INSERT INTO tb_auto_artwork_dtl
(
    guid_key,
    Artwork_Structure_XML,
    Artwork_Data_XML,
    isCompress
)
VALUES
(
    "34535435",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "56353456",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "24534545",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "67467655",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
);

CREATE TABLE tb_auto_artwork_dtl_log
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    guid_key NVARCHAR(100) NULL,
    Artwork_Structure_XML NVARCHAR(100) NULL,
    Artwork_Data_XML NVARCHAR(100) NULL,
    isCompress NVARCHAR(100) NULL
);

DESC tb_auto_artwork_dtl_log;

INSERT INTO tb_auto_artwork_dtl_log
(
    guid_key,
    Artwork_Structure_XML,
    Artwork_Data_XML,
    isCompress
)
VALUES
(
    "34535435",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "56353456",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "24534545",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "67467655",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
);

CREATE TABLE tb_auto_artwork_log
(
    id INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    IPAddress NVARCHAR(100) NULL,
    RequestUrl NVARCHAR(100) NULL,
    guid_key NVARCHAR(100) NOT NULL,
    Type NVARCHAR(100) NULL,
    UID NVARCHAR(100) NULL,
    Other NVARCHAR(100) NULL,
    sign NCHAR(20) NULL,
    Total_Page_No NVARCHAR(100) NULL,
    PNG NVARCHAR(400) NULL,
    PDF NVARCHAR(400) NULL,
    create_date DATETIME(6) NULL,
    Version NVARCHAR(20) NULL,
    Artwork_Width FLOAT(9) NULL,
    Artwork_Height FLOAT(9) NULL,
    Inkscape_Version NVARCHAR(100) NULL,
    label NVARCHAR(100) NULL
);

DESC tb_auto_artwork_log;

INSERT INTO tb_auto_artwork_log
(
    IPAddress,
    RequestUrl,
    guid_key,
    Type,
    UID,
    Other,
    sign,
    Total_Page_No,
    PNG,
    PDF,
    create_date,
    Version,
    Artwork_Width,
    Artwork_Height,
    Inkscape_Version,
    label
)
VALUES
(
    "198.245.4.33",
    "/users",
    "345543",
    "FAIL",
    "34534rad3453drd",
    "Other ...",
    "Network Connection",
    "43",
    "PNG document link",
    "PDF document link",
    "2022-05-08 09:14:07",
    "v3",
    43554.4,
    4345.4,
    "V4",
    "Network connection problem"
),
(
    "198.245.4.33",
    "/orders",
    "345543",
    "FAIL",
    "34534rad3453drd",
    "Other ...",
    "Network Connection",
    "43",
    "PNG document link",
    "PDF document link",
    "2022-05-08 09:14:07",
    "v3",
    43554.4,
    4345.4,
    "V4",
    "Network connection problem"
),
(
    "198.245.4.33",
    "/sizetable",
    "345543",
    "FAIL",
    "34534rad3453drd",
    "Other ...",
    "Network Connection",
    "43",
    "PNG document link",
    "PDF document link",
    "2022-05-08 09:14:07",
    "v3",
    43554.4,
    4345.4,
    "V4",
    "Network connection problem"
),
(
    "198.245.4.33",
    "/create-order",
    "345543",
    "FAIL",
    "34534rad3453drd",
    "Other ...",
    "Network Connection",
    "43",
    "PNG document link",
    "PDF document link",
    "2022-05-08 09:14:07",
    "v3",
    43554.4,
    4345.4,
    "V4",
    "Network connection problem"
);

CREATE TABLE tb_auto_artwork_regenerate
(
    id INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    brandKey NVARCHAR(100) NULL,
    brandName NVARCHAR(100) NULL,
    orderNo NVARCHAR(100) NULL,
    reGenCount INT(4) NULL,
    createDate DATETIME(6) NULL,
    modifityDate DATETIME(6) NULL
);

DESC tb_auto_artwork_regenerate;

INSERT INTO tb_auto_artwork_regenerate
(
    brandKey,
    brandName,
    orderNo,
    reGenCount,
    createDate
)
VALUES 
(
    "234245",
    "Teslati",
    '2342',
    12,
    "2022-05-08 09:14:07"
),
(
    "234245",
    "BMW",
    '2342',
    12,
    "2022-05-08 09:14:07"
),
(
    "234245",
    "BENZ",
    '2342',
    12,
    "2022-05-08 09:14:07"
);

CREATE TABLE tb_AwXmlConfig
(
    id INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    GuidKey NVARCHAR(100) NULL,
    BrandId NVARCHAR(100) NULL,
    ExportMode NVARCHAR(2) NULL,
    KeyField NVARCHAR(100) NULL,
    TranslationLanguage NVARCHAR(100) NULL,
    CreateBy NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    LastBy NVARCHAR(100) NULL,
    LastDate TIMESTAMP(6) NULL,
    FtpIp NVARCHAR(2) NULL,
    FtpLogin NVARCHAR(100) NULL,
    FtpPwd NVARCHAR(100) NULL,    
    FtpModel CHAR(1) NULL,    
    IsTwoXml NVARCHAR(1) NULL    
);

DESC tb_AwXmlConfig;

INSERT INTO tb_AwXmlConfig
(
    GuidKey,
    BrandId,
    ExportMode,
    KeyField,
    TranslationLanguage,
    CreateBy,
    CreateDate,
    LastBy,
    LastDate,
    FtpIp,
    FtpLogin,
    FtpPwd,    
    FtpModel,    
    IsTwoXml    
)
VALUES
(
    GuidKey,
    BrandId,
    ExportMode,
    KeyField,
    TranslationLanguage,
    CreateBy,
    CreateDate,
    LastBy,
    LastDate,
    FtpIp,
    FtpLogin,
    FtpPwd,    
    FtpModel,    
    IsTwoXml    
)
