.class public Lcom/spiraltoys/cloudpets2/model/StoryLoader;
.super Ljava/lang/Object;
.source "StoryLoader.java"


# static fields
.field private static final EXTENSION_JPEG:Ljava/lang/String; = "jpeg"

.field private static final EXTENSION_JPG:Ljava/lang/String; = "jpg"

.field private static final EXTENSION_PNG:Ljava/lang/String; = "png"

.field private static final EXTENSION_WAV:Ljava/lang/String; = "wav"

.field private static final STORIES_DIRECTORY_PATH:Ljava/lang/String; = "expansion_media_files/stories/"

.field private static final STORY_FILE_NAME:Ljava/lang/String; = "story.json"

.field private static final STORY_PAGE_FILE_NAME_MATCHER:Ljava/util/regex/Pattern;

.field private static final STORY_PREVIEW_FILE_NAME_MATCHER:Ljava/util/regex/Pattern;

.field private static mInstance:Lcom/spiraltoys/cloudpets2/model/StoryLoader;


# instance fields
.field private mStories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Story;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "^.*preview$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->STORY_PREVIEW_FILE_NAME_MATCHER:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, "^.*page.*?([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->STORY_PAGE_FILE_NAME_MATCHER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/spiraltoys/cloudpets2/model/StoryLoader;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/spiraltoys/cloudpets2/model/StoryLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mInstance:Lcom/spiraltoys/cloudpets2/model/StoryLoader;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/model/StoryLoader;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mInstance:Lcom/spiraltoys/cloudpets2/model/StoryLoader;

    .line 45
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mInstance:Lcom/spiraltoys/cloudpets2/model/StoryLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private tryToAddOrUpdatePageEntry(Landroid/util/SparseArray;Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;)Z
    .locals 9
    .param p2, "storyFileEntry"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Story$Page;",
            ">;",
            "Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "pages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/spiraltoys/cloudpets2/model/Story$Page;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 142
    iget-object v6, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/common/io/Files;->getNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "fileName":Ljava/lang/String;
    sget-object v6, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->STORY_PAGE_FILE_NAME_MATCHER:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 145
    .local v2, "pageMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 148
    .local v3, "pageNumber":I
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/model/Story$Page;

    .line 149
    .local v1, "page":Lcom/spiraltoys/cloudpets2/model/Story$Page;
    if-nez v1, :cond_0

    .line 150
    new-instance v6, Lcom/spiraltoys/cloudpets2/model/Story$Page;

    invoke-direct {v6}, Lcom/spiraltoys/cloudpets2/model/Story$Page;-><init>()V

    invoke-virtual {p1, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "page":Lcom/spiraltoys/cloudpets2/model/Story$Page;
    check-cast v1, Lcom/spiraltoys/cloudpets2/model/Story$Page;

    .line 153
    .restart local v1    # "page":Lcom/spiraltoys/cloudpets2/model/Story$Page;
    :cond_0
    iget-object v6, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/common/io/Files;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v6, :pswitch_data_0

    move v4, v5

    .line 167
    .end local v1    # "page":Lcom/spiraltoys/cloudpets2/model/Story$Page;
    .end local v3    # "pageNumber":I
    :goto_1
    return v4

    .line 153
    .restart local v1    # "page":Lcom/spiraltoys/cloudpets2/model/Story$Page;
    .restart local v3    # "pageNumber":I
    :sswitch_0
    const-string v8, "wav"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v5

    goto :goto_0

    :sswitch_1
    const-string v8, "jpeg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v4

    goto :goto_0

    :sswitch_2
    const-string v8, "jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v8, "png"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x3

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object v5, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/spiraltoys/cloudpets2/model/Story$Page;->setAudioPath(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :pswitch_1
    iget-object v5, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/spiraltoys/cloudpets2/model/Story$Page;->setImagePath(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "page":Lcom/spiraltoys/cloudpets2/model/Story$Page;
    .end local v3    # "pageNumber":I
    :cond_2
    move v4, v5

    .line 167
    goto :goto_1

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x19be1 -> :sswitch_2
        0x1b229 -> :sswitch_3
        0x1caec -> :sswitch_0
        0x31e068 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private tryToAddOrUpdatePreviewEntry(Lcom/spiraltoys/cloudpets2/model/Story;Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;)V
    .locals 5
    .param p1, "story"    # Lcom/spiraltoys/cloudpets2/model/Story;
    .param p2, "storyFileEntry"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .prologue
    .line 171
    iget-object v4, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/common/io/Files;->getNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "fileName":Ljava/lang/String;
    iget-object v4, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/common/io/Files;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "fileExtension":Ljava/lang/String;
    sget-object v4, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->STORY_PREVIEW_FILE_NAME_MATCHER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 175
    .local v2, "previewMatcher":Ljava/util/regex/Matcher;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v3, "validPreviewExtensions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v4, "jpeg"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v4, "jpg"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v4, "png"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/spiraltoys/cloudpets2/model/Story;->setPreviewImagePath(Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method private tryToLoadStory(Landroid/content/Context;Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Story;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "expansion"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .param p3, "folderPath"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "story.json"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10

    .line 91
    .local v10, "storyFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    const/4 v4, 0x0

    .line 93
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v4

    .line 94
    new-instance v12, Lcom/google/gson/GsonBuilder;

    invoke-direct {v12}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 95
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v12, Lcom/google/gson/stream/JsonReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v13}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const-class v13, Lcom/spiraltoys/cloudpets2/model/Story;

    invoke-virtual {v2, v12, v13}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/spiraltoys/cloudpets2/model/Story;

    .line 97
    .local v9, "story":Lcom/spiraltoys/cloudpets2/model/Story;
    if-eqz v9, :cond_4

    .line 98
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/spiraltoys/cloudpets2/model/Story;->loadResources(Landroid/content/Context;)V

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/spiraltoys/cloudpets2/model/Story;->getPageStringsArrayResourceId(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "pageStrings":[Ljava/lang/String;
    new-instance v7, Landroid/util/SparseArray;

    array-length v12, v6

    invoke-direct {v7, v12}, Landroid/util/SparseArray;-><init>(I)V

    .line 102
    .local v7, "pages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/spiraltoys/cloudpets2/model/Story$Page;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v12, v6

    if-ge v3, v12, :cond_0

    .line 103
    new-instance v5, Lcom/spiraltoys/cloudpets2/model/Story$Page;

    invoke-direct {v5}, Lcom/spiraltoys/cloudpets2/model/Story$Page;-><init>()V

    .line 104
    .local v5, "page":Lcom/spiraltoys/cloudpets2/model/Story$Page;
    aget-object v12, v6, v3

    invoke-virtual {v5, v12}, Lcom/spiraltoys/cloudpets2/model/Story$Page;->setText(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v7, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v5    # "page":Lcom/spiraltoys/cloudpets2/model/Story$Page;
    :cond_0
    invoke-virtual/range {p2 .. p3}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getEntriesAt(Ljava/lang/String;)[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_2

    aget-object v11, v13, v12

    .line 109
    .local v11, "storyFileEntry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->tryToAddOrUpdatePageEntry(Landroid/util/SparseArray;Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 110
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->tryToAddOrUpdatePreviewEntry(Lcom/spiraltoys/cloudpets2/model/Story;Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;)V

    .line 108
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 114
    .end local v11    # "storyFileEntry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v8, "pagesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/model/Story$Page;>;"
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 116
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual {v9, v8}, Lcom/spiraltoys/cloudpets2/model/Story;->setPages(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v3    # "i":I
    .end local v6    # "pageStrings":[Ljava/lang/String;
    .end local v7    # "pages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/spiraltoys/cloudpets2/model/Story$Page;>;"
    .end local v8    # "pagesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/model/Story$Page;>;"
    :cond_4
    if-eqz v4, :cond_5

    .line 128
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v9    # "story":Lcom/spiraltoys/cloudpets2/model/Story;
    :cond_5
    :goto_3
    return-object v9

    .line 129
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v9    # "story":Lcom/spiraltoys/cloudpets2/model/Story;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v9    # "story":Lcom/spiraltoys/cloudpets2/model/Story;
    :catch_1
    move-exception v1

    .line 124
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    if-eqz v4, :cond_6

    .line 128
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 135
    :cond_6
    :goto_4
    const/4 v9, 0x0

    goto :goto_3

    .line 129
    :catch_2
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    if-eqz v4, :cond_7

    .line 128
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 131
    :cond_7
    :goto_5
    throw v12

    .line 129
    :catch_3
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method


# virtual methods
.method public getStories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Story;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mStories:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mStories:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mStories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadStories(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Story;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mStories:Ljava/util/ArrayList;

    .line 81
    :goto_0
    return-object v5

    .line 56
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mStories:Ljava/util/ArrayList;

    .line 59
    :try_start_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->getMainExpansionDescriptor()Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getZipResourceFile(Landroid/content/Context;)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v2

    .line 60
    .local v2, "expansion":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    const-string v5, "expansion_media_files/stories/"

    invoke-virtual {v2, v5}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getEntriesAt(Ljava/lang/String;)[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-result-object v1

    .line 62
    .local v1, "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v4, v1, v5

    .line 63
    .local v4, "storyFolderEntry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    iget-object v7, v4, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v7}, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->tryToLoadStory(Landroid/content/Context;Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Story;

    move-result-object v3

    .line 64
    .local v3, "story":Lcom/spiraltoys/cloudpets2/model/Story;
    if-eqz v3, :cond_1

    .line 65
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mStories:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    .end local v1    # "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .end local v2    # "expansion":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .end local v3    # "story":Lcom/spiraltoys/cloudpets2/model/Story;
    .end local v4    # "storyFolderEntry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mStories:Ljava/util/ArrayList;

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mStories:Ljava/util/ArrayList;

    new-instance v6, Lcom/spiraltoys/cloudpets2/model/StoryLoader$1;

    invoke-direct {v6, p0}, Lcom/spiraltoys/cloudpets2/model/StoryLoader$1;-><init>(Lcom/spiraltoys/cloudpets2/model/StoryLoader;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/model/StoryLoader;->mStories:Ljava/util/ArrayList;

    goto :goto_0
.end method
