.class public Landroid/pim/ContactsAsyncHelper;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/ContactsAsyncHelper$1;,
        Landroid/pim/ContactsAsyncHelper$WorkerHandler;,
        Landroid/pim/ContactsAsyncHelper$ImageTracker;,
        Landroid/pim/ContactsAsyncHelper$WorkerArgs;,
        Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_BIG_PHOTO:I = 0x2

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static final ROUND_CORNER_PIXELS:I = 0x5

.field private static sInstance:Landroid/pim/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/pim/ContactsAsyncHelper;

    invoke-direct {v0}, Landroid/pim/ContactsAsyncHelper;-><init>()V

    sput-object v0, Landroid/pim/ContactsAsyncHelper;->sInstance:Landroid/pim/ContactsAsyncHelper;

    .line 75
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 253
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 255
    new-instance v1, Landroid/pim/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/pim/ContactsAsyncHelper$WorkerHandler;-><init>(Landroid/pim/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Landroid/pim/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 256
    return-void
.end method

.method public static LoadBigPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"
    .parameter "context"
    .parameter "fileUri"

    .prologue
    const/4 v2, 0x0

    .line 367
    new-instance v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;

    invoke-direct {v0, v2}, Landroid/pim/ContactsAsyncHelper$WorkerArgs;-><init>(Landroid/pim/ContactsAsyncHelper$1;)V

    .line 368
    .local v0, args:Landroid/pim/ContactsAsyncHelper$WorkerArgs;
    iput-object p3, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 369
    iput-object p4, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 370
    iput-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 371
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 372
    const/4 v2, -0x1

    iput v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 373
    iput-object p2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->listener:Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 374
    iput-object p0, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 377
    sget-object v2, Landroid/pim/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 378
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 379
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 384
    sget-object v2, Landroid/pim/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 385
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v0, 0x0

    .line 264
    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 266
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 10
    .parameter "info"
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    .line 298
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move v8, v9

    invoke-static/range {v0 .. v8}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 300
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;IZ)V
    .locals 5
    .parameter "info"
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"
    .parameter "goneForInvisible"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    .line 311
    if-nez p6, :cond_1

    if-eqz p5, :cond_1

    .line 313
    if-eqz p8, :cond_0

    .line 314
    invoke-virtual {p5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 325
    :cond_1
    new-instance v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/pim/ContactsAsyncHelper$WorkerArgs;-><init>(Landroid/pim/ContactsAsyncHelper$1;)V

    .line 326
    .local v0, args:Landroid/pim/ContactsAsyncHelper$WorkerArgs;
    iput-object p3, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 327
    iput-object p4, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 328
    iput-object p5, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 329
    iput-object p6, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 330
    iput p7, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 331
    iput-object p2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->listener:Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 332
    iput-object p0, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 335
    sget-object v2, Landroid/pim/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 336
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 337
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    if-eqz p5, :cond_2

    .line 345
    const/4 v2, -0x1

    if-eq p7, v2, :cond_3

    .line 346
    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    :cond_2
    :goto_1
    sget-object v2, Landroid/pim/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 349
    :cond_3
    if-eqz p8, :cond_4

    .line 350
    invoke-virtual {p5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 352
    :cond_4
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 9
    .parameter "info"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v2, 0x0

    .line 275
    const/4 v1, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v8}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 277
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;IZ)V
    .locals 9
    .parameter "info"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"
    .parameter "goneForInvisible"

    .prologue
    const/4 v2, 0x0

    .line 285
    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 392
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;

    .line 393
    .local v0, args:Landroid/pim/ContactsAsyncHelper$WorkerArgs;
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 427
    .end local p0
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->listener:Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->listener:Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v3, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v4, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v5, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v5, :cond_5

    move v5, v7

    :goto_1
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    .line 433
    :cond_1
    return-void

    .line 397
    .restart local p0
    :pswitch_0
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 398
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object p0, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    :cond_2
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_3

    .line 404
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object p0, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    iput-object p0, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 414
    :cond_3
    :goto_2
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    goto :goto_0

    .line 406
    .restart local p0
    :cond_4
    iget v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 407
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 408
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 419
    :pswitch_1
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object p0, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    iput-object p0, v1, Lcom/android/internal/telephony/CallerInfo;->cachedBigPhoto:Landroid/graphics/drawable/Drawable;

    .line 421
    iget-object v1, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    goto :goto_0

    :cond_5
    move v5, v6

    .line 430
    goto :goto_1

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
