.class Landroid/pim/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/pim/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Landroid/pim/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 183
    iput-object p1, p0, Landroid/pim/ContactsAsyncHelper$WorkerHandler;->this$0:Landroid/pim/ContactsAsyncHelper;

    .line 184
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 185
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-string v7, "ContactsAsyncHelper"

    .line 189
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;

    .line 190
    .local v0, args:Landroid/pim/ContactsAsyncHelper$WorkerArgs;
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .line 192
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/pim/ContactsAsyncHelper$WorkerHandler;->this$0:Landroid/pim/ContactsAsyncHelper;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Landroid/pim/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 243
    .local v4, reply:Landroid/os/Message;
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 244
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-void

    .line 195
    .end local v4           #reply:Landroid/os/Message;
    :pswitch_0
    :try_start_0
    iget-object v5, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v5, v6}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 198
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-static {v1, v5, v6}, Lcom/android/internal/util/GraphicsUtils;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    .line 202
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 205
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ContactsAsyncHelper"

    const-string v5, "Open photo failed"

    invoke-static {v7, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 220
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v5, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 221
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 222
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 224
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 225
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "ContactsAsyncHelper"

    const-string v5, "Open big photo failed"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
