RegisterNUICallback('GetInvoices', function(data, cb)
    QSPhone.TriggerServerCallback('qs-smartphone:server:GetInvoices',function(data)
        PhoneData.Invoices = data
        cb(data)
    end)
end)

RegisterNUICallback('PayInvoice', function(data, cb)
    local sender = data.sender
    local amount = data.amount
    local invoiceId = data.invoiceId

    QSPhone.TriggerServerCallback('qs-smartphone:server:CanPayInvoice', function(CanPay, message)
        if CanPay then
            PayInvoice(invoiceId)
            cb( {CanPay = true } )
        else
            cb( {CanPay = false , message = message} )
        end
    end, amount, invoiceId)
end)

function PayInvoice(invoiceId)
    if Config.Framework == 'ESX' then
        if Config.billingSystem == 'default' then 
            ESX.TriggerServerCallback(Config.billingpayBillEvent, function()
                QSPhone.TriggerServerCallback('qs-smartphone:server:GetInvoices', function(Invoices)
                    PhoneData.Invoices = Invoices
                end)
            end, invoiceId)
        elseif Config.billingSystem == 'okokBilling' then
            TriggerServerEvent(Config.billingpayBillEvent, invoiceId)
        elseif Config.billingSystem == 'rcore_billing' then
            TriggerServerEvent(Config.billingpayBillEvent, invoiceId)
        else 
            -- Add your own code here
        end
    elseif Config.Framework == 'QBCore' then
        if Config.billingSystem == 'default' then 
            QSPhone.TriggerServerCallback('qs-smartphone:server:PayInvoice', function()
            end, invoiceId)
        elseif Config.billingSystem == 'okokBilling' then
            TriggerServerEvent(Config.billingpayBillEvent, invoiceId)
        elseif Config.billingSystem == 'jim-payments' then
            QSPhone.TriggerServerCallback('qs-smartphone:server:PayInvoice', function()
            end, invoiceId)
        end
    end
end