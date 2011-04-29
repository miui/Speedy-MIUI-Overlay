.class Landroid/preference/BuildSearchIndexReceiverBase$1;
.super Ljava/lang/Object;
.source "BuildSearchIndexReceiverBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/BuildSearchIndexReceiverBase;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/BuildSearchIndexReceiverBase;


# direct methods
.method constructor <init>(Landroid/preference/BuildSearchIndexReceiverBase;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Landroid/preference/BuildSearchIndexReceiverBase$1;->this$0:Landroid/preference/BuildSearchIndexReceiverBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    .local v2, start_time:J
    iget-object v4, p0, Landroid/preference/BuildSearchIndexReceiverBase$1;->this$0:Landroid/preference/BuildSearchIndexReceiverBase;

    invoke-virtual {v4}, Landroid/preference/BuildSearchIndexReceiverBase;->backgroundBuild()V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    .local v0, end_time:J
    const-string v4, "BuildSearchIndexReceiverBase"

    const-string v5, "%s search-index build time: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/preference/BuildSearchIndexReceiverBase$1;->this$0:Landroid/preference/BuildSearchIndexReceiverBase;

    invoke-static {v8}, Landroid/preference/BuildSearchIndexReceiverBase;->access$000(Landroid/preference/BuildSearchIndexReceiverBase;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sub-long v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
