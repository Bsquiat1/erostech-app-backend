# Create some customers
customer1 = Customer.create(
    name: 'John Doe',
    email: 'john.doe@example.com',
    phone: '123-456-7890',
    address: '123 Main Street, Cityville'
  )
  
  customer2 = Customer.create(
    name: 'Jane Smith',
    email: 'jane.smith@example.com',
    phone: '987-654-3210',
    address: '456 Elm Street, Townsville'
  )
  
  # Create gate passes
  gate_pass1 = GatePass.create(
    pass_number: 'GP2023-001',
    date: Date.today,
    customer_id: customer1.id,
    loading_depot_id: 1
  )
  
  gate_pass2 = GatePass.create(
    pass_number: 'GP2023-002',
    date: Date.today,
    customer_id: customer2.id,
    loading_depot_id: 2
  )
  
  # Create invoice items
  invoice_item1 = InvoiceItem.create(
    name: 'Product A',
    quantity: 5,
    price: 10.99,
    invoice_id: 1
  )
  
  invoice_item2 = InvoiceItem.create(
    name: 'Product B',
    quantity: 3,
    price: 7.99,
    invoice_id: 2
  )
  
  # Create invoices
  invoice1 = Invoice.create(
    invoice_number: 'INV2023-001',
    date: Date.today,
    subtotal: 54.95,
    discount: 5.00,
    tax: 8.24,
    total: 58.19,
    currency: 'USD',
    customer_id: customer1.id
  )
  
  invoice2 = Invoice.create(
    invoice_number: 'INV2023-002',
    date: Date.today,
    subtotal: 23.97,
    discount: 2.00,
    tax: 3.59,
    total: 25.56,
    currency: 'USD',
    customer_id: customer2.id
  )
  
  # Create load authorities
  load_authority1 = LoadAuthority.create(
    authority_number: 'LA2023-001',
    date: Date.today,
    customer_id: customer1.id,
    loading_depot_id: 1
  )
  
  load_authority2 = LoadAuthority.create(
    authority_number: 'LA2023-002',
    date: Date.today,
    customer_id: customer2.id,
    loading_depot_id: 2
  )
  
  # Create order confirmations
  order_confirmation1 = OrderConfirmation.create(
    order_number: 'OC2023-001',
    date: Date.today,
    customer_id: customer1.id
  )
  
  order_confirmation2 = OrderConfirmation.create(
    order_number: 'OC2023-002',
    date: Date.today,
    customer_id: customer2.id
  )
  
  # Create payments received
  payment_received1 = PaymentReceived.create(
    payment_date: Date.today,
    amount: 58.19,
    invoice_id: invoice1.id
  )
  
  payment_received2 = PaymentReceived.create(
    payment_date: Date.today,
    amount: 25.56,
    invoice_id: invoice2.id
  )
  
  # Create proforma invoices
  proforma_invoice1 = ProformaInvoice.create(
    invoice_number: 'PI2023-001',
    date: Date.today,
    subtotal: 60.00,
    discount: 0,
    tax: 9.00,
    total: 69.00,
    currency: 'USD',
    customer_id: customer1.id
  )
  
  proforma_invoice2 = ProformaInvoice.create(
    invoice_number: 'PI2023-002',
    date: Date.today,
    subtotal: 30.00,
    discount: 0,
    tax: 4.50,
    total: 34.50,
    currency: 'USD',
    customer_id: customer2.id
  )
  