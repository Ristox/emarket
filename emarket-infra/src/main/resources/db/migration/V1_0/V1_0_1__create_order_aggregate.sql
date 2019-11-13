CREATE TABLE "ORDER_ITEM" (
    "ID" VARCHAR2(36 CHAR) PRIMARY KEY,
    "CUSTOMER_ID" VARCHAR2(36 CHAR) NOT NULL,
    "STATUS" VARCHAR2(10 CHAR) NOT NULL,
    "VERSION" NUMBER(15) NOT NULL,
    CONSTRAINT FK_ORDER_CUSTOMER
    FOREIGN KEY (CUSTOMER_ID)
    REFERENCES CUSTOMER(ID)
);


CREATE TABLE "ORDER_LINE" (
    "ORDER_ID" VARCHAR2(36 CHAR) NOT NULL,
    "QUANTITY" NUMBER(10) NOT NULL,
    "PRODUCT_ID" VARCHAR2(36 CHAR) NOT NULL,
    CONSTRAINT FK_ORDER_LINE
    FOREIGN KEY (ORDER_ID)
    REFERENCES "ORDER_ITEM"(ID)
);
