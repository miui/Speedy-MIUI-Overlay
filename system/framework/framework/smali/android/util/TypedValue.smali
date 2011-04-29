.class public Landroid/util/TypedValue;
.super Ljava/lang/Object;
.source "TypedValue.java"


# static fields
.field public static final COMPLEX_MANTISSA_MASK:I = 0xffffff

.field public static final COMPLEX_MANTISSA_SHIFT:I = 0x8

.field public static final COMPLEX_RADIX_0p23:I = 0x3

.field public static final COMPLEX_RADIX_16p7:I = 0x1

.field public static final COMPLEX_RADIX_23p0:I = 0x0

.field public static final COMPLEX_RADIX_8p15:I = 0x2

.field public static final COMPLEX_RADIX_MASK:I = 0x3

.field public static final COMPLEX_RADIX_SHIFT:I = 0x4

.field public static final COMPLEX_UNIT_DIP:I = 0x1

.field public static final COMPLEX_UNIT_FRACTION:I = 0x0

.field public static final COMPLEX_UNIT_FRACTION_PARENT:I = 0x1

.field public static final COMPLEX_UNIT_IN:I = 0x4

.field public static final COMPLEX_UNIT_MASK:I = 0xf

.field public static final COMPLEX_UNIT_MM:I = 0x5

.field public static final COMPLEX_UNIT_PT:I = 0x3

.field public static final COMPLEX_UNIT_PX:I = 0x0

.field public static final COMPLEX_UNIT_SHIFT:I = 0x0

.field public static final COMPLEX_UNIT_SP:I = 0x2

.field public static final DENSITY_DEFAULT:I = 0x0

.field public static final DENSITY_NONE:I = 0xffff

.field private static final DIMENSION_UNIT_STRS:[Ljava/lang/String; = null

.field private static final FRACTION_UNIT_STRS:[Ljava/lang/String; = null

.field private static final MANTISSA_MULT:F = 0.00390625f

.field private static final RADIX_MULTS:[F = null

.field public static final TYPE_ATTRIBUTE:I = 0x2

.field public static final TYPE_DIMENSION:I = 0x5

.field public static final TYPE_FIRST_COLOR_INT:I = 0x1c

.field public static final TYPE_FIRST_INT:I = 0x10

.field public static final TYPE_FLOAT:I = 0x4

.field public static final TYPE_FRACTION:I = 0x6

.field public static final TYPE_INT_BOOLEAN:I = 0x12

.field public static final TYPE_INT_COLOR_ARGB4:I = 0x1e

.field public static final TYPE_INT_COLOR_ARGB8:I = 0x1c

.field public static final TYPE_INT_COLOR_RGB4:I = 0x1f

.field public static final TYPE_INT_COLOR_RGB8:I = 0x1d

.field public static final TYPE_INT_DEC:I = 0x10

.field public static final TYPE_INT_HEX:I = 0x11

.field public static final TYPE_LAST_COLOR_INT:I = 0x1f

.field public static final TYPE_LAST_INT:I = 0x1f

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_REFERENCE:I = 0x1

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field public assetCookie:I

.field public changingConfigurations:I

.field public data:I

.field public density:I

.field public resourceId:I

.field public string:Ljava/lang/CharSequence;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/TypedValue;->RADIX_MULTS:[F

    .line 499
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "px"

    aput-object v1, v0, v3

    const-string v1, "dip"

    aput-object v1, v0, v4

    const-string v1, "sp"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "pt"

    aput-object v2, v0, v1

    const-string v1, "in"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "mm"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    .line 502
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "%"

    aput-object v1, v0, v3

    const-string v1, "%p"

    aput-object v1, v0, v4

    sput-object v0, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    return-void

    .line 191
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3bt
        0x0t 0x0t 0x0t 0x38t
        0x0t 0x0t 0x0t 0x34t
        0x0t 0x0t 0x0t 0x30t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TypedValue;->changingConfigurations:I

    return-void
.end method

.method public static applyDimension(IFLandroid/util/DisplayMetrics;)F
    .locals 2
    .parameter "unit"
    .parameter "value"
    .parameter "metrics"

    .prologue
    .line 405
    packed-switch p0, :pswitch_data_0

    .line 419
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    move v0, p1

    .line 407
    goto :goto_0

    .line 409
    :pswitch_1
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    goto :goto_0

    .line 411
    :pswitch_2
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p1

    goto :goto_0

    .line 413
    :pswitch_3
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3c638e39

    mul-float/2addr v0, v1

    goto :goto_0

    .line 415
    :pswitch_4
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    goto :goto_0

    .line 417
    :pswitch_5
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3d214285

    mul-float/2addr v0, v1

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final coerceToString(II)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x1f

    .line 518
    packed-switch p0, :pswitch_data_0

    .line 539
    :pswitch_0
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    :pswitch_1
    move-object v0, v2

    .line 520
    goto :goto_0

    .line 522
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 524
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 526
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 528
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 531
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 534
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 536
    :pswitch_8
    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    goto/16 :goto_0

    :cond_0
    const-string v0, "false"

    goto/16 :goto_0

    .line 541
    :cond_1
    const/16 v0, 0x10

    if-lt p0, v0, :cond_2

    if-gt p0, v1, :cond_2

    .line 542
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move-object v0, v2

    .line 545
    goto/16 :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static complexToDimension(ILandroid/util/DisplayMetrics;)F
    .locals 2
    .parameter "data"
    .parameter "metrics"

    .prologue
    .line 311
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static complexToDimensionNoisy(ILandroid/util/DisplayMetrics;)F
    .locals 5
    .parameter "data"
    .parameter "metrics"

    .prologue
    .line 377
    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    .line 378
    .local v0, res:F
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dimension (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, p0, 0x8

    const v4, 0xffffff

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/util/TypedValue;->RADIX_MULTS:[F

    shr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    const/high16 v4, 0x3b80

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v4, p0, 0x0

    and-int/lit8 v4, v4, 0xf

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    return v0
.end method

.method public static complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    .locals 2
    .parameter "data"
    .parameter "metrics"

    .prologue
    .line 336
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    .locals 5
    .parameter "data"
    .parameter "metrics"

    .prologue
    const/4 v4, 0x0

    .line 363
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    .line 364
    .local v2, value:F
    shr-int/lit8 v3, p0, 0x0

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 368
    .local v0, f:F
    const/high16 v3, 0x3f00

    add-float/2addr v3, v0

    float-to-int v1, v3

    .line 369
    .local v1, res:I
    if-eqz v1, :cond_0

    move v3, v1

    .line 372
    :goto_0
    return v3

    .line 370
    :cond_0
    cmpl-float v3, v2, v4

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 371
    :cond_1
    cmpl-float v3, v2, v4

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 372
    :cond_2
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static complexToFloat(I)F
    .locals 3
    .parameter "complex"

    .prologue
    .line 208
    and-int/lit16 v0, p0, -0x100

    int-to-float v0, v0

    sget-object v1, Landroid/util/TypedValue;->RADIX_MULTS:[F

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static complexToFraction(IFF)F
    .locals 1
    .parameter "data"
    .parameter "base"
    .parameter "pbase"

    .prologue
    .line 455
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    .line 461
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 457
    :pswitch_0
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p1

    goto :goto_0

    .line 459
    :pswitch_1
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p2

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .parameter "value"

    .prologue
    .line 219
    const/4 v3, -0x4

    .line 220
    .local v3, intPos:I
    const/4 v0, -0x3

    .line 221
    .local v0, dotPos:I
    const/4 v1, -0x2

    .line 222
    .local v1, fractionPos:I
    const/4 v5, -0x1

    .line 223
    .local v5, unitPos:I
    const/4 v2, 0x0

    .local v2, i:I
    move v4, v3

    .end local v3           #intPos:I
    .local v4, intPos:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    move v2, v1

    .end local v1           #fractionPos:I
    .local v2, fractionPos:I
    move v1, v0

    .end local v0           #dotPos:I
    .local v1, dotPos:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_11

    .line 224
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 225
    .local v0, c:C
    const/4 v6, -0x4

    if-ne v4, v6, :cond_0

    const/16 v6, 0x30

    if-lt v0, v6, :cond_0

    const/16 v6, 0x39

    if-gt v0, v6, :cond_0

    .line 226
    move v4, v3

    .line 228
    :cond_0
    const/4 v6, -0x3

    if-ne v1, v6, :cond_1

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_1

    .line 229
    move v1, v3

    .line 231
    :cond_1
    const/4 v6, -0x3

    if-eq v1, v6, :cond_2

    const/16 v6, 0x30

    if-lt v0, v6, :cond_2

    const/16 v6, 0x39

    if-gt v0, v6, :cond_2

    .line 232
    move v2, v3

    .line 234
    :cond_2
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    const/16 v6, 0x61

    if-lt v0, v6, :cond_4

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_4

    .line 235
    move v0, v3

    .end local v5           #unitPos:I
    .local v0, unitPos:I
    move v5, v0

    .end local v0           #unitPos:I
    .restart local v5       #unitPos:I
    move v3, v2

    .end local v2           #fractionPos:I
    .local v3, fractionPos:I
    move v0, v1

    .end local v1           #dotPos:I
    .local v0, dotPos:I
    move v1, v4

    .line 239
    .end local v4           #intPos:I
    .local v1, intPos:I
    :goto_1
    const/4 v1, 0x0

    .line 240
    .local v1, f:F
    const/4 v2, 0x0

    .line 241
    .local v2, fraction:I
    const/4 v6, 0x0

    .line 242
    .local v6, unitType:I
    const/4 v4, 0x0

    .line 244
    .local v4, mantissaShift:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_f

    if-ge v0, v3, :cond_f

    if-ge v3, v5, :cond_f

    .line 246
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 250
    const/4 v7, -0x3

    if-eq v0, v7, :cond_3

    const/4 v0, -0x2

    if-eq v3, v0, :cond_3

    .line 252
    .end local v0           #dotPos:I
    :try_start_1
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .end local v2           #fraction:I
    .local v0, fraction:I
    move v2, v0

    .line 257
    .end local v0           #fraction:I
    .restart local v2       #fraction:I
    :cond_3
    const/16 v0, 0x100

    if-ge v2, v0, :cond_5

    .line 258
    const/high16 v0, 0x4380

    mul-float/2addr v0, v1

    .end local v1           #f:F
    .local v0, f:F
    move v1, v4

    .line 269
    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    :goto_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 270
    .local p0, unit:Ljava/lang/String;
    const-string v3, "px"

    .end local v3           #fractionPos:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 271
    const/4 p0, 0x0

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .line 286
    .end local p0           #unitType:I
    .local v3, unitType:I
    :goto_3
    float-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 287
    .local p0, complex:Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #complex:Ljava/lang/Integer;
    and-int/lit16 p0, p0, -0x100

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 288
    .restart local p0       #complex:Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #complex:Ljava/lang/Integer;
    shl-int/lit8 v4, v1, 0x4

    or-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 289
    .restart local p0       #complex:Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #complex:Ljava/lang/Integer;
    or-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .restart local p0       #complex:Ljava/lang/Integer;
    move v8, v3

    .end local v3           #unitType:I
    .local v8, unitType:I
    move-object v3, p0

    move p0, v0

    .end local v0           #f:F
    .local p0, f:F
    move v0, v2

    .end local v2           #fraction:I
    .local v0, fraction:I
    move v2, v8

    .line 293
    .end local v8           #unitType:I
    .local v2, unitType:I
    :goto_4
    return-object v3

    .line 223
    .local v0, c:C
    .local v1, dotPos:I
    .local v2, fractionPos:I
    .local v3, i:I
    .local v4, intPos:I
    .local p0, value:Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    goto/16 :goto_0

    .line 247
    .local v0, dotPos:I
    .local v1, f:F
    .local v2, fraction:I
    .local v3, fractionPos:I
    .local v4, mantissaShift:I
    .restart local v6       #unitType:I
    :catch_0
    move-exception p0

    .line 248
    .local p0, e:Ljava/lang/NumberFormatException;
    const/4 p0, 0x0

    move v0, v2

    .end local v2           #fraction:I
    .local v0, fraction:I
    move-object v3, p0

    move p0, v1

    .end local v1           #f:F
    .local p0, f:F
    move v2, v6

    .end local v6           #unitType:I
    .local v2, unitType:I
    move v1, v4

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_4

    .line 253
    .end local v0           #fraction:I
    .local v1, f:F
    .local v2, fraction:I
    .restart local v4       #mantissaShift:I
    .restart local v6       #unitType:I
    .local p0, value:Ljava/lang/String;
    :catch_1
    move-exception p0

    .line 254
    .local p0, e:Ljava/lang/NumberFormatException;
    const/4 p0, 0x0

    move v0, v2

    .end local v2           #fraction:I
    .restart local v0       #fraction:I
    move-object v3, p0

    move p0, v1

    .end local v1           #f:F
    .local p0, f:F
    move v2, v6

    .end local v6           #unitType:I
    .local v2, unitType:I
    move v1, v4

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_4

    .line 259
    .end local v0           #fraction:I
    .local v1, f:F
    .local v2, fraction:I
    .restart local v4       #mantissaShift:I
    .restart local v6       #unitType:I
    .local p0, value:Ljava/lang/String;
    :cond_5
    const v0, 0x8000

    if-ge v2, v0, :cond_6

    .line 260
    const/high16 v0, 0x4700

    mul-float/2addr v0, v1

    .line 261
    .end local v1           #f:F
    .local v0, f:F
    const/4 v1, 0x1

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_2

    .line 262
    .end local v0           #f:F
    .local v1, f:F
    .restart local v4       #mantissaShift:I
    :cond_6
    const/high16 v0, 0x4000

    if-ge v2, v0, :cond_7

    .line 263
    const/high16 v0, 0x4e80

    mul-float/2addr v0, v1

    .line 264
    .end local v1           #f:F
    .restart local v0       #f:F
    const/4 v1, 0x2

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_2

    .line 265
    .end local v0           #f:F
    .local v1, f:F
    .restart local v4       #mantissaShift:I
    :cond_7
    const/high16 v0, 0x20

    if-ge v2, v0, :cond_10

    .line 266
    const/high16 v0, 0x4a00

    mul-float/2addr v0, v1

    .line 267
    .end local v1           #f:F
    .restart local v0       #f:F
    const/4 v1, 0x3

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_2

    .line 272
    .end local v3           #fractionPos:I
    .local p0, unit:Ljava/lang/String;
    :cond_8
    const-string v3, "dp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "dip"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 273
    :cond_9
    const/4 p0, 0x1

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .end local p0           #unitType:I
    .local v3, unitType:I
    goto :goto_3

    .line 274
    .end local v3           #unitType:I
    .restart local v6       #unitType:I
    .local p0, unit:Ljava/lang/String;
    :cond_a
    const-string v3, "sp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 275
    const/4 p0, 0x2

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .end local p0           #unitType:I
    .restart local v3       #unitType:I
    goto :goto_3

    .line 276
    .end local v3           #unitType:I
    .restart local v6       #unitType:I
    .local p0, unit:Ljava/lang/String;
    :cond_b
    const-string v3, "pt"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 277
    const/4 p0, 0x3

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .end local p0           #unitType:I
    .restart local v3       #unitType:I
    goto/16 :goto_3

    .line 278
    .end local v3           #unitType:I
    .restart local v6       #unitType:I
    .local p0, unit:Ljava/lang/String;
    :cond_c
    const-string v3, "in"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 279
    const/4 p0, 0x4

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .end local p0           #unitType:I
    .restart local v3       #unitType:I
    goto/16 :goto_3

    .line 280
    .end local v3           #unitType:I
    .restart local v6       #unitType:I
    .local p0, unit:Ljava/lang/String;
    :cond_d
    const-string v3, "mm"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #unit:Ljava/lang/String;
    if-eqz p0, :cond_e

    .line 281
    const/4 p0, 0x5

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .end local p0           #unitType:I
    .restart local v3       #unitType:I
    goto/16 :goto_3

    .line 283
    .end local v3           #unitType:I
    .restart local v6       #unitType:I
    :cond_e
    const/4 p0, 0x0

    move-object v3, p0

    move p0, v0

    .end local v0           #f:F
    .local p0, f:F
    move v0, v2

    .end local v2           #fraction:I
    .local v0, fraction:I
    move v2, v6

    .end local v6           #unitType:I
    .local v2, unitType:I
    goto :goto_4

    .line 291
    .local v0, dotPos:I
    .local v1, f:F
    .local v2, fraction:I
    .local v3, fractionPos:I
    .restart local v4       #mantissaShift:I
    .restart local v6       #unitType:I
    .local p0, value:Ljava/lang/String;
    :cond_f
    const/4 p0, 0x0

    move v0, v2

    .end local v2           #fraction:I
    .local v0, fraction:I
    move-object v3, p0

    move p0, v1

    .end local v1           #f:F
    .local p0, f:F
    move v2, v6

    .end local v6           #unitType:I
    .local v2, unitType:I
    move v1, v4

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_4

    .end local v0           #fraction:I
    .local v1, f:F
    .local v2, fraction:I
    .restart local v4       #mantissaShift:I
    .restart local v6       #unitType:I
    .local p0, value:Ljava/lang/String;
    :cond_10
    move v0, v1

    .end local v1           #f:F
    .local v0, f:F
    move v1, v4

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto/16 :goto_2

    .end local v0           #f:F
    .end local v6           #unitType:I
    .local v1, dotPos:I
    .local v2, fractionPos:I
    .local v3, i:I
    .local v4, intPos:I
    :cond_11
    move v3, v2

    .end local v2           #fractionPos:I
    .local v3, fractionPos:I
    move v0, v1

    .end local v1           #dotPos:I
    .local v0, dotPos:I
    move v1, v4

    .end local v4           #intPos:I
    .local v1, intPos:I
    goto/16 :goto_1
.end method


# virtual methods
.method public final coerceToString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 492
    iget v0, p0, Landroid/util/TypedValue;->type:I

    .line 493
    .local v0, t:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 494
    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 496
    :goto_0
    return-object v1

    :cond_0
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDimension(Landroid/util/DisplayMetrics;)F
    .locals 1
    .parameter "metrics"

    .prologue
    .line 434
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public final getFloat()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFraction(FF)F
    .locals 1
    .parameter "base"
    .parameter "pbase"

    .prologue
    .line 479
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    return v0
.end method

.method public setTo(Landroid/util/TypedValue;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 550
    iget v0, p1, Landroid/util/TypedValue;->type:I

    iput v0, p0, Landroid/util/TypedValue;->type:I

    .line 551
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 552
    iget v0, p1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Landroid/util/TypedValue;->data:I

    .line 553
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 554
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    iput v0, p0, Landroid/util/TypedValue;->resourceId:I

    .line 555
    iget v0, p1, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/util/TypedValue;->density:I

    .line 556
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "TypedValue{t=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v1, "/d=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 564
    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_0
    iget v1, p0, Landroid/util/TypedValue;->assetCookie:I

    if-eqz v1, :cond_1

    .line 567
    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    :cond_1
    iget v1, p0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_2

    .line 570
    const-string v1, " r=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 564
    :cond_3
    const-string v2, "<null>"

    goto :goto_0
.end method
