codeunit 55000 "Sales Release Check"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeReleaseSalesDoc', '', false, false)]
    local procedure CheckExternalDocNoOnBeforeRelease(var SalesHeader: Record "Sales Header"; var IsHandled: Boolean)
    var
        ExternalDocNoMissingErr: Label 'Enter External Document No. before releasing sales order %1.', Comment = '%1 = Sales order number';
    begin
        if IsHandled then
            exit;
        if SalesHeader."Document Type" <> SalesHeader."Document Type"::Order then
            exit;
        if SalesHeader."External Document No." = '' then
            Error(ExternalDocNoMissingErr, SalesHeader."No.");
    end;
}
