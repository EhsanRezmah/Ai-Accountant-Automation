CREATE TABLE receipts (
    id GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    telegram_id TEXT NOT NULL,
    store_name TEXT,
    invoice_number TEXT,
    invoice_date DATE,
    total_amount FLOAT8,
    invoice_time TEXT,
    currency TEXT,
    image_url TEXT
);

ALTER TABLE receipts 
ADD CONSTRAINT unique_user_receipt UNIQUE (telegram_id, invoice_date, total_amount);
