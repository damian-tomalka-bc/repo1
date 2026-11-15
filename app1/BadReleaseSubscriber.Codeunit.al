codeunit 55000 "Bad Release Subscriber"
{
    // CELOWO ZŁY KOD do ćwiczenia przeglądu. Nie używać w projekcie.
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeReleaseSalesDoc', '', false, false)]
    local procedure ReleaseWithoutStandard(var SalesHeader: Record "Sales Header"; var IsHandled: Boolean)
    begin
        SalesHeader.Status := SalesHeader.Status::Released;
        SalesHeader.Modify(true);
        IsHandled := true;
    end;
}
