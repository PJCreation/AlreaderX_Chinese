.class public final synthetic Landroidx/emoji2/text/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

.field public final synthetic f:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

.field public final synthetic g:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/c;->e:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

    iput-object p2, p0, Landroidx/emoji2/text/c;->f:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    iput-object p3, p0, Landroidx/emoji2/text/c;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/emoji2/text/c;->e:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

    iget-object v1, p0, Landroidx/emoji2/text/c;->f:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    iget-object v2, p0, Landroidx/emoji2/text/c;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1, v2}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;->a(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
