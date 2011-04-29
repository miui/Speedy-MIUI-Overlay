.class public abstract Landroid/preference/BuildSearchIndexReceiverBase;
.super Landroid/content/BroadcastReceiver;
.source "BuildSearchIndexReceiverBase.java"


# static fields
.field public static final ACTION_BUILD_SEARCH_INDEX:Ljava/lang/String; = "android.preference.action.BUILD_SEARCH_INDEX"

.field public static final ACTIVITY:Ljava/lang/String; = "suggest_intent_extra_data"

.field public static final DATA_URI:Landroid/net/Uri; = null

.field public static final DEPTH:Ljava/lang/String; = "depth"

.field public static final SEARCH_TEXT:Ljava/lang/String; = "search_text"

.field public static final SUMMARY:Ljava/lang/String; = "suggest_text_2"

.field public static final TAG:Ljava/lang/String; = "BuildSearchIndexReceiverBase"

.field public static final TITLE:Ljava/lang/String; = "suggest_text_1"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://com.android.settings.Provider/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/preference/BuildSearchIndexReceiverBase;->DATA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final GetValueStringFromXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "parser"
    .parameter "attr_name"

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 133
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 137
    .local v1, string_id:I
    iget-object v3, p0, Landroid/preference/BuildSearchIndexReceiverBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v1           #string_id:I
    :cond_0
    move-object v3, v2

    .line 142
    .end local v2           #value:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 132
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/preference/BuildSearchIndexReceiverBase;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/preference/BuildSearchIndexReceiverBase;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final addIndexForActivity(ILjava/lang/Class;)V
    .locals 14
    .parameter "res_id"
    .parameter "activity"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/preference/BuildSearchIndexReceiverBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 83
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 84
    .local v5, depth:I
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v13, titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    .line 86
    .local v7, eventType:I
    :goto_0
    const/4 v0, 0x1

    if-eq v7, v0, :cond_5

    .line 88
    packed-switch v7, :pswitch_data_0

    .line 87
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    goto :goto_0

    .line 90
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    .line 91
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 92
    .local v11, tag:Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-direct {p0, v9, v0}, Landroid/preference/BuildSearchIndexReceiverBase;->GetValueStringFromXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 93
    .local v12, title:Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    const-string v0, "summary"

    invoke-direct {p0, v9, v0}, Landroid/preference/BuildSearchIndexReceiverBase;->GetValueStringFromXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, summary:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 99
    const-string v2, ""

    .line 100
    :cond_1
    const/4 v1, 0x0

    .line 101
    .local v1, full_title:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 102
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 103
    .local v10, part:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 104
    if-nez v1, :cond_3

    .line 105
    move-object v1, v10

    .line 101
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    .end local v1           #full_title:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #full_title:Ljava/lang/String;
    goto :goto_3

    .line 110
    .end local v10           #part:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/preference/BuildSearchIndexReceiverBase;->addIndexForActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 122
    .end local v1           #full_title:Ljava/lang/String;
    .end local v2           #summary:Ljava/lang/String;
    .end local v7           #eventType:I
    .end local v8           #i:I
    .end local v11           #tag:Ljava/lang/String;
    .end local v12           #title:Ljava/lang/String;
    .end local v13           #titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 123
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "BuildSearchIndexReceiverBase"

    const-string v1, "Got exception parsing xml."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_4
    return-void

    .line 117
    .restart local v7       #eventType:I
    .restart local v13       #titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    :try_start_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 124
    .end local v7           #eventType:I
    .end local v13           #titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 125
    .local v6, e:Ljava/io/IOException;
    const-string v0, "BuildSearchIndexReceiverBase"

    const-string v1, "Got exception parsing xml."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 88
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final addIndexForActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 5
    .parameter "title"
    .parameter "summary"
    .parameter "search_text"
    .parameter "activity"
    .parameter "depth"

    .prologue
    const-string v4, "\n"

    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "suggest_text_1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "suggest_text_2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "search_text"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "suggest_intent_extra_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/preference/BuildSearchIndexReceiverBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "depth"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    iget-object v1, p0, Landroid/preference/BuildSearchIndexReceiverBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/preference/BuildSearchIndexReceiverBase;->DATA_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 77
    return-void
.end method

.method public abstract backgroundBuild()V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/preference/BuildSearchIndexReceiverBase;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/preference/BuildSearchIndexReceiverBase$1;

    invoke-direct {v1, p0}, Landroid/preference/BuildSearchIndexReceiverBase$1;-><init>(Landroid/preference/BuildSearchIndexReceiverBase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    return-void
.end method
