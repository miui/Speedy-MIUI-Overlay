.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# static fields
.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final sTemp:Landroid/text/TextPaint;


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 124
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 126
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 130
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 145
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 149
    if-eqz p9, :cond_0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    move-object v1, v2

    if-ne v0, v1, :cond_1

    .line 150
    :cond_0
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 152
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 153
    const/4 v11, 0x1

    .line 165
    .local v11, trust:Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 167
    return-void

    .line 155
    .end local v11           #trust:Z
    :cond_1
    move/from16 v0, p10

    int-to-float v0, v0

    move v4, v0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 161
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 162
    const/4 v11, 0x0

    .restart local v11       #trust:Z
    goto :goto_0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .parameter "text"
    .parameter "paint"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 9
    .parameter "text"
    .parameter "paint"
    .parameter "metrics"

    .prologue
    .line 239
    const/16 v1, 0x1f4

    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v7

    .line 240
    .local v7, temp:[C
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 241
    .local v5, len:I
    const/4 v2, 0x1

    .line 244
    .local v2, boring:Z
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_7

    .line 245
    add-int/lit16 v1, v4, 0x1f4

    .line 247
    .local v1, j:I
    if-le v1, v5, :cond_0

    .line 248
    move v1, v5

    .line 250
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v4, v1, v7, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 252
    sub-int v6, v1, v4

    .line 254
    .local v6, n:I
    const/4 v1, 0x0

    .local v1, a:I
    :goto_1
    if-ge v1, v6, :cond_5

    .line 255
    aget-char v3, v7, v1

    .line 257
    .local v3, c:C
    const/16 v8, 0xa

    if-eq v3, v8, :cond_1

    const/16 v8, 0x9

    if-eq v3, v8, :cond_1

    const/16 v8, 0x590

    if-lt v3, v8, :cond_4

    .line 258
    :cond_1
    const/4 v1, 0x0

    .line 264
    .end local v2           #boring:Z
    .end local v3           #c:C
    .end local v6           #n:I
    .local v1, boring:Z
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->recycle([C)V

    .line 266
    if-eqz v1, :cond_2

    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_2

    .line 267
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v2, v0

    .line 268
    .local v2, sp:Landroid/text/Spanned;
    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .end local v4           #i:I
    const-class v5, Landroid/text/style/ParagraphStyle;

    .end local v5           #len:I
    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 269
    .local v2, styles:[Ljava/lang/Object;
    array-length v2, v2

    .end local v2           #styles:[Ljava/lang/Object;
    if-lez v2, :cond_2

    .line 270
    const/4 v1, 0x0

    .line 274
    :cond_2
    if-eqz v1, :cond_6

    .line 275
    move-object v6, p2

    .line 276
    .local v6, fm:Landroid/text/BoringLayout$Metrics;
    if-nez v6, :cond_3

    .line 277
    new-instance v6, Landroid/text/BoringLayout$Metrics;

    .end local v6           #fm:Landroid/text/BoringLayout$Metrics;
    invoke-direct {v6}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 282
    .restart local v6       #fm:Landroid/text/BoringLayout$Metrics;
    :cond_3
    sget-object p2, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    .end local p2
    monitor-enter p2

    .line 283
    :try_start_0
    sget-object v2, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v1, p1

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .end local v1           #boring:Z
    move-result p0

    .end local p0
    invoke-static {p0}, Landroid/util/FloatMath;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    .line 285
    .local p0, wid:I
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    iput p0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move-object p0, v6

    .line 289
    .end local v6           #fm:Landroid/text/BoringLayout$Metrics;
    .end local p0           #wid:I
    :goto_3
    return-object p0

    .line 254
    .local v1, a:I
    .local v2, boring:Z
    .restart local v3       #c:C
    .restart local v4       #i:I
    .restart local v5       #len:I
    .local v6, n:I
    .local p0, text:Ljava/lang/CharSequence;
    .restart local p2
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    .end local v3           #c:C
    :cond_5
    add-int/lit16 v1, v4, 0x1f4

    .end local v4           #i:I
    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 285
    .end local v2           #boring:Z
    .end local v4           #i:I
    .end local v5           #len:I
    .end local p0           #text:Ljava/lang/CharSequence;
    .end local p2
    .local v6, fm:Landroid/text/BoringLayout$Metrics;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 289
    .end local v6           #fm:Landroid/text/BoringLayout$Metrics;
    .local v1, boring:Z
    .restart local p0       #text:Ljava/lang/CharSequence;
    .restart local p2
    :cond_6
    const/4 p0, 0x0

    goto :goto_3

    .end local v1           #boring:Z
    .restart local v2       #boring:Z
    .restart local v4       #i:I
    .restart local v5       #len:I
    :cond_7
    move v1, v2

    .end local v2           #boring:Z
    .restart local v1       #boring:Z
    goto :goto_2
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 9
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 44
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 55
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 4
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffset"

    .prologue
    .line 362
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 363
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public ellipsized(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 373
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 374
    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 375
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 345
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 350
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 309
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 332
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineMax(I)F
    .locals 1
    .parameter "line"

    .prologue
    .line 328
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getLineStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getLineTop(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    goto :goto_0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .locals 7
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "trustWidth"

    .prologue
    .line 177
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p4, v0, :cond_3

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 183
    :goto_0
    iput-object p2, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 185
    if-eqz p8, :cond_4

    .line 186
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int v6, v0, v1

    .line 191
    .local v6, spacing:I
    :goto_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p5, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p6, v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    int-to-float v0, v6

    mul-float/2addr v0, p5

    add-float/2addr v0, p6

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 195
    :cond_1
    iput v6, p0, Landroid/text/BoringLayout;->mBottom:I

    .line 197
    if-eqz p8, :cond_5

    .line 198
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->top:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/text/BoringLayout;->mDesc:I

    .line 203
    :goto_2
    if-eqz p9, :cond_6

    .line 204
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v0, v0

    iput v0, p0, Landroid/text/BoringLayout;->mMax:F

    .line 218
    .end local v6           #spacing:I
    :goto_3
    if-eqz p8, :cond_2

    .line 219
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->top:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 220
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 222
    :cond_2
    return-void

    .line 180
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_4
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->descent:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int v6, v0, v1

    .restart local v6       #spacing:I
    goto :goto_1

    .line 200
    :cond_5
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->ascent:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_2

    .line 211
    :cond_6
    sget-object v6, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    .end local v6           #spacing:I
    monitor-enter v6

    .line 212
    :try_start_0
    sget-object v1, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/text/BoringLayout;->mMax:F

    .line 215
    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 73
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 77
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 79
    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 12
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 96
    if-eqz p9, :cond_0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    move-object v1, v2

    if-ne v0, v1, :cond_1

    .line 97
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 100
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 101
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 102
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 103
    const/4 v11, 0x1

    .line 114
    .local v11, trust:Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 116
    return-object p0

    .line 105
    .end local v11           #trust:Z
    :cond_1
    move/from16 v0, p10

    int-to-float v0, v0

    move v4, v0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 110
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 111
    const/4 v11, 0x0

    .restart local v11       #trust:Z
    goto :goto_0
.end method
