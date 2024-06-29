.class public Lcom/neverland/readbase/DBOperation;
.super Ljava/lang/Object;
.source "DBOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized realBaseWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception v3

    const/4 v4, 0x1

    .line 5
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    :goto_2
    if-nez v3, :cond_3

    .line 6
    monitor-exit p0

    return v1

    :cond_3
    const/4 v3, 0x0

    .line 7
    :try_start_3
    new-instance v4, Lcom/neverland/readbase/WorkDB;

    invoke-direct {v4, p1}, Lcom/neverland/readbase/WorkDB;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8
    :try_start_4
    invoke-virtual {v4}, Lcom/neverland/readbase/WorkDB;->getWDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9
    :try_start_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_2
    :cond_4
    :try_start_6
    const-string v3, "ATTACH DATABASE ? AS srcDb;"

    new-array v5, v0, [Ljava/lang/String;

    .line 11
    sget-object v6, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    invoke-virtual {v6}, Lcom/neverland/readbase/TBase;->getBaseFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "INSERT INTO main.recent SELECT * FROM srcDb.recent;"

    .line 13
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO main.stack SELECT * FROM srcDb.stack;"

    .line 14
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO main.bookmarks SELECT * FROM srcDb.bookmarks;"

    .line 15
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM main.filebmk;"

    .line 16
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO main.filebmk SELECT * FROM srcDb.filebmk;"

    .line 17
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 19
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    aput-object p3, v2, v0

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 p3, 0x4

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x25

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p3

    .line 21
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p2, "UPDATE recent SET filename = replace( filename, ?, ?), cardpath = replace( cardpath, ?, ?) WHERE filename LIKE ?;"

    .line 22
    invoke-virtual {p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "UPDATE bookmarks SET filename = replace( filename, ?, ?), cardpath = replace( cardpath, ?, ?) WHERE filename LIKE ?;"

    .line 23
    invoke-virtual {p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "UPDATE filebmk SET path = replace( path, ?, ?), card = replace( card, ?, ?) WHERE (card LIKE ?) AND (type = 1 OR type = 5 OR type = 7 OR type = 10);"

    .line 24
    invoke-virtual {p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 26
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5
    const-string p2, "DETACH srcDb;"

    .line 27
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 28
    :try_start_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v3, v4

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    .line 29
    :goto_3
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_6

    .line 30
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_6
    const/4 v0, 0x0

    .line 31
    :goto_4
    monitor-exit p0

    return v0

    :goto_5
    if-eqz v3, :cond_7

    .line 32
    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 33
    :cond_7
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_6
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized changeBaseCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/neverland/readbase/DBOperation;->realBaseWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public compareBookmarks(Ljava/lang/String;Ljava/lang/String;)Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;
    .locals 7

    .line 1
    sget-object v0, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->NONEW:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Lcom/neverland/readbase/BookmarkDB;

    invoke-direct {v2, p2}, Lcom/neverland/readbase/BookmarkDB;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v2}, Lcom/neverland/readbase/BookmarkDB;->getWDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_0
    :try_start_3
    const-string v1, "ATTACH DATABASE ? AS remoteDb;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 6
    invoke-virtual {p2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p1, "insert into main.bookmarks (dateadd,dateedit,num,filename,cardpath,crc,start,stop,color,typebmk,name,text,lowtext,idbook,param0,param1,shiftpos,shiftstart,shiftstop,textpos,textstart,textstop) select dateadd,dateedit,num,filename,cardpath,crc,start,stop,color,typebmk,name,text,lowtext,idbook,param0,param1,shiftpos,shiftstart,shiftstop,textpos,textstart,textstop from remoteDb.bookmarks where remoteDb.bookmarks.dateadd not in (select dateadd from main.bookmarks)"

    .line 8
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    .line 10
    sget-object v0, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->NEWEST:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    .line 11
    :cond_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 12
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 13
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p1, "replace into main.bookmarks (id,dateadd,dateedit,num,filename,cardpath,crc,start,stop,color,typebmk,name,text,lowtext,idbook,param0,param1,shiftpos,shiftstart,shiftstop,textpos,textstart,textstop) select r1.id,r2.dateadd,r2.dateedit,r2.num,r2.filename,r2.cardpath,r2.crc,r2.start,r2.stop,r2.color,r2.typebmk,r2.name,r2.text,r2.lowtext,r2.idbook,r2.param0,r2.param1,r2.shiftpos,r2.shiftstart,r2.shiftstop,r2.textpos,r2.textstart,r2.textstop from remoteDb.bookmarks as r2 left join main.bookmarks as r1 on r1.dateadd = r2.dateadd where r2.dateedit > r1.dateedit"

    .line 14
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1

    int-to-long v3, p1

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    .line 16
    sget-object v0, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->NEWEST:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    .line 17
    :cond_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 18
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string p1, "DETACH remoteDb;"

    .line 19
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 21
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    sget-object v0, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->ERROR:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_3
    :goto_1
    return-object v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 24
    :cond_4
    throw p1
.end method

.method public getNewestBookmarks(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Lcom/neverland/readbase/WorkDB;

    invoke-direct {v3, p1}, Lcom/neverland/readbase/WorkDB;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v3}, Lcom/neverland/readbase/WorkDB;->getWDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_0
    :try_start_3
    const-string v2, "ATTACH DATABASE ? AS remoteDb;"

    new-array v4, v1, [Ljava/lang/String;

    aput-object p2, v4, v0

    .line 5
    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p2, "insert into main.bookmarks (dateadd,dateedit,num,filename,cardpath,crc,start,stop,color,typebmk,name,text,lowtext,idbook,param0,param1,shiftpos,shiftstart,shiftstop,textpos,textstart,textstop) select r2.dateadd,r2.dateedit,r2.num,r2.filename,r2.cardpath,r2.crc,r2.start,r2.stop,r2.color,r2.typebmk,r2.name,r2.text,r2.lowtext,r2.idbook,r2.param0,r2.param1,r2.shiftpos,r2.shiftstart,r2.shiftstop,r2.textpos,r2.textstart,r2.textstop from remoteDb.bookmarks as r2 left join main.bookmarks as r1 on r1.dateadd = r2.dateadd where r1.id is null"

    .line 7
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p2, "replace into main.bookmarks (id,dateadd,dateedit,num,filename,cardpath,crc,start,stop,color,typebmk,name,text,lowtext,idbook,param0,param1,shiftpos,shiftstart,shiftstop,textpos,textstart,textstop) select r1.id,r2.dateadd,r2.dateedit,r2.num,r2.filename,r2.cardpath,r2.crc,r2.start,r2.stop,r2.color,r2.typebmk,r2.name,r2.text,r2.lowtext,r2.idbook,r2.param0,r2.param1,r2.shiftpos,r2.shiftstart,r2.shiftstop,r2.textpos,r2.textstart,r2.textstop from remoteDb.bookmarks as r2 left join main.bookmarks as r1 on r1.dateadd = r2.dateadd where (r1.id is not null) and (r1.dateedit < r2.dateedit)"

    .line 12
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 15
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string p2, "DETACH remoteDb;"

    .line 16
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 18
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 20
    :cond_2
    throw p1
.end method

.method public importARBookmark(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Lcom/neverland/readbase/WorkDB;

    invoke-direct {v3, p1}, Lcom/neverland/readbase/WorkDB;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v3}, Lcom/neverland/readbase/WorkDB;->getWDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_0
    :try_start_3
    const-string v2, "ATTACH DATABASE ? AS remoteDb;"

    new-array v4, v1, [Ljava/lang/String;

    aput-object p2, v4, v0

    .line 5
    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p2, "insert into main.bookmarks (dateadd,dateedit,num,filename,cardpath,crc,start,stop,color,typebmk,name,text,lowtext,idbook,param0,param1,shiftpos,shiftstart,shiftstop,textpos,textstart,textstop) select r2.DF,r2.DF,r2.num,r2.filename,r2.cardpath,r2.crc,r2.start,r2.stop,r2.color,r2.typebmk,r2.name,r2.text,r2.lowtext,r2.idbook,r2.param0,r2.param1,-1,-1,-1,-1,-1,-1 from remoteDb.BOOKMARKLIST as r2 "

    .line 7
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string p2, "DETACH remoteDb;"

    .line 11
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 13
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 15
    :cond_2
    throw p1
.end method

.method public declared-synchronized makeBookmarksBackup(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception v2

    const/4 v3, 0x1

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    .line 6
    monitor-exit p0

    return v0

    :cond_2
    const/4 v2, 0x0

    .line 7
    :try_start_3
    new-instance v3, Lcom/neverland/readbase/BookmarkDB;

    invoke-direct {v3, p1}, Lcom/neverland/readbase/BookmarkDB;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8
    :try_start_4
    invoke-virtual {v3}, Lcom/neverland/readbase/BookmarkDB;->getWDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_2
    :cond_3
    :try_start_6
    const-string v2, "ATTACH DATABASE ? AS srcDb;"

    new-array v4, v1, [Ljava/lang/String;

    .line 11
    sget-object v5, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    invoke-virtual {v5}, Lcom/neverland/readbase/TBase;->getBaseFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "INSERT INTO main.bookmarks SELECT * FROM srcDb.bookmarks;"

    .line 13
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 15
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "DETACH srcDb;"

    .line 16
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 17
    :try_start_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v3

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    .line 18
    :goto_2
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_4

    .line 19
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 20
    :cond_4
    :goto_3
    monitor-exit p0

    return v1

    :goto_4
    if-eqz v2, :cond_5

    .line 21
    :try_start_a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 22
    :cond_5
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeClearBackupBase(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, v0, v0}, Lcom/neverland/readbase/DBOperation;->realBaseWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
