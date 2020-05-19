// This file contains your Data Connector logic
section AnonymousTravel;

[DataSource.Kind="AnonymousTravel", Publish="AnonymousTravel.Publish"]
shared AnonymousTravel.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from AnonymousTravel: " & _message
    in
        a;

// Data Source Kind description
AnonymousTravel = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Implicit = []
    ],
    Label = Extension.LoadString("DataSourceLabel")
];

// Data Source UI publishing description
AnonymousTravel.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = AnonymousTravel.Icons,
    SourceTypeImage = AnonymousTravel.Icons
];

AnonymousTravel.Icons = [
    Icon16 = { Extension.Contents("AnonymousTravel16.png"), Extension.Contents("AnonymousTravel20.png"), Extension.Contents("AnonymousTravel24.png"), Extension.Contents("AnonymousTravel32.png") },
    Icon32 = { Extension.Contents("AnonymousTravel32.png"), Extension.Contents("AnonymousTravel40.png"), Extension.Contents("AnonymousTravel48.png"), Extension.Contents("AnonymousTravel64.png") }
];
