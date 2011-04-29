.class Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ContactHeaderWidget;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    .line 260
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 261
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 22
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 266
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$000(Lcom/android/internal/widget/ContactHeaderWidget;)Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 267
    const-string v19, "ContactHeaderWidget"

    const-string v20, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    if-eqz p3, :cond_0

    .line 387
    .end local p2
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_0
    return-void

    .line 271
    .restart local p2
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 386
    .end local p2
    :cond_2
    :goto_1
    if-eqz p3, :cond_0

    goto :goto_0

    .line 274
    .restart local p2
    :pswitch_0
    const/4 v14, 0x0

    .line 275
    .local v14, photoBitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_3

    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_3

    .line 277
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 278
    .local v15, photoData:[B
    const/16 v19, 0x0

    move-object v0, v15

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 282
    .end local v15           #photoData:[B
    :cond_3
    if-nez v14, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 285
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v19

    const/16 v20, 0x7

    const/16 v21, 0x7

    move-object v0, v14

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GraphicsUtils;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/net/Uri;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v19

    check-cast p2, Landroid/net/Uri;

    .end local p2
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 289
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 386
    .end local v14           #photoBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v19

    if-eqz p3, :cond_6

    .line 387
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_6
    throw v19

    .line 293
    .restart local p2
    :pswitch_1
    if-eqz p3, :cond_9

    :try_start_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->bindContactInfo(Landroid/database/Cursor;)V

    .line 295
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 296
    .local v6, contactId:J
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-wide v0, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 299
    .local v12, lookupUri:Landroid/net/Uri;
    const/16 v19, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 301
    .local v16, photoId:J
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-nez v19, :cond_8

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Landroid/widget/QuickContactBadge;->setDefaultPhoto(Landroid/widget/ImageView;J)V

    .line 303
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/net/Uri;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v19

    check-cast p2, Landroid/net/Uri;

    .end local p2
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 306
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->invalidate()V

    .line 312
    :goto_2
    sget-object v19, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    const-string v20, "data"

    invoke-static/range {v19 .. v20}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 316
    .local v8, dataUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object v1, v8

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/ContactHeaderWidget;->access$300(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .line 308
    .end local v8           #dataUri:Landroid/net/Uri;
    .restart local p2
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    move-object v3, v12

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ContactHeaderWidget;->startPhotoQuery(JLandroid/net/Uri;Z)V

    goto :goto_2

    .line 319
    .end local v6           #contactId:J
    .end local v12           #lookupUri:Landroid/net/Uri;
    .end local v16           #photoId:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 326
    :pswitch_2
    if-eqz p3, :cond_a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 327
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 328
    .restart local v6       #contactId:J
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 330
    .local v11, lookupKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static {v6, v7, v11}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/widget/ContactHeaderWidget;->access$400(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .line 333
    .end local v6           #contactId:J
    .end local v11           #lookupKey:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 334
    .local v13, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object v1, v13

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object v1, v13

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$500(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 340
    .local v10, location:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$600(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$600(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 344
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$600(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 350
    .end local v10           #location:Ljava/lang/String;
    .end local v13           #phoneNumber:Ljava/lang/String;
    :pswitch_3
    if-eqz p3, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 351
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 352
    .restart local v6       #contactId:J
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 354
    .restart local v11       #lookupKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static {v6, v7, v11}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/widget/ContactHeaderWidget;->access$400(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .line 357
    .end local v6           #contactId:J
    .end local v11           #lookupKey:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 358
    .local v9, emailAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object v1, v9

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object v1, v9

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 366
    .end local v9           #emailAddress:Ljava/lang/String;
    :pswitch_4
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 367
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, company:Ljava/lang/String;
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 369
    .local v18, title:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$700(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$700(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$800(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$800(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 373
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$700(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 380
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/ContactHeaderWidget;->access$800(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
