.class public Lcom/neverland/readbase/BookmarkDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BookmarkDB.java"


# instance fields
.field private read_db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    iput-object v1, p0, Lcom/neverland/readbase/BookmarkDB;->read_db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private disableWAL(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    :cond_0
    :try_start_0
    const-string v0, "PRAGMA journal_mode=DELETE"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getRDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/readbase/BookmarkDB;->read_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/readbase/BookmarkDB;->read_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/neverland/readbase/BookmarkDB;->read_db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getWDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/readbase/BookmarkDB;->read_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/readbase/BookmarkDB;->read_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/neverland/readbase/BookmarkDB;->read_db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/neverland/readbase/BookmarkDB;->disableWAL(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "PRAGMA temp_store = MEMORY"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS bookmarks (id INTEGER PRIMARY KEY,idbook INTEGER NOT NULL,num INTEGER DEFAULT 0,dateadd INTEGER NOT NULL,dateedit INTEGER NOT NULL,filename TEXT NOT NULL,cardpath TEXT NOT NULL,crc TEXT NOT NULL,start INTEGER NOT NULL,stop INTEGER NOT NULL,color INTEGER DEFAULT 0,typebmk INTEGER DEFAULT 0,name TEXT NOT NULL,text TEXT NOT NULL,lowtext TEXT NOT NULL,param0 INTEGER NOT NULL DEFAULT -1,param1 TEXT,shiftpos INTEGER NOT NULL DEFAULT -1,shiftstart INTEGER NOT NULL DEFAULT -1,shiftstop INTEGER NOT NULL DEFAULT -1,textpos INTEGER NOT NULL DEFAULT -1,textstart INTEGER NOT NULL DEFAULT -1,textstop INTEGER NOT NULL DEFAULT -1        )"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 3
    :goto_1
    throw p1
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/neverland/readbase/BookmarkDB;->disableWAL(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
