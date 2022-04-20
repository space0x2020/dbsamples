BEGIN {
    if (rdbms == "")
        rdbms = "postgresql";
    if (rdbms != "postgresql" && rdbms != "sqlite3") {
        printf("invalid rdbms(%s)\n", rdbms);
        rdbms = "postgresql"
    }
    if (rdbms == "postgresql") {
        printf("\\set AUTOCOMMIT OFF\n");
        printf("set client_encoding=SJIS;\n");
        printf("\n");
    }
}
{
    if (rdbms == "postgresql") {
        printf("%s\n", $0);
    } else if (rdbms == "sqlite3") {
        printf("%s\n", $0);
    }
}
END {
}
