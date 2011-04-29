.class public Landroid/widget/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpectrumVisualizer$SymmetryDotBar;,
        Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;,
        Landroid/widget/SpectrumVisualizer$DotBarDrawer;,
        Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;
    }
.end annotation


# static fields
.field private static final RES_DEFAULT_SLIDING_DOT_BAR_ID:I = 0x1080359

.field private static final RES_DEFAULT_SLIDING_PANEL_ID:I = 0x1080358

.field private static final RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I = 0x108035a

.field private static final VISUALIZATION_SAMPLE_LENGTH:I = 0x100


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private div:F

.field private mAlphaWidthNum:I

.field private mCellSize:I

.field private mDotbarHeight:I

.field private mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

.field private mEnableDrawing:Z

.field private mIsEnableUpdate:Z

.field private mIsNeedCareStreamActive:Z

.field private mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPixels:[I

.field private mPointData:[F

.field private mSampleBuf:[S

.field private mShadowDotbarHeight:I

.field private mShadowPixels:[I

.field private mVisualizationHeightNum:I

.field private mVisualizationWidthNum:I

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 47
    const/16 v0, 0x200

    new-array v0, v0, [S

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 175
    new-instance v0, Landroid/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Landroid/widget/SpectrumVisualizer$1;-><init>(Landroid/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 215
    const/high16 v0, 0x4100

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->div:F

    .line 216
    const/high16 v0, 0x4180

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->a:F

    .line 217
    const/high16 v0, 0x4000

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->b:F

    .line 218
    const/high16 v0, 0x3fc0

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->c:F

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 47
    const/16 v0, 0x200

    new-array v0, v0, [S

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 175
    new-instance v0, Landroid/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Landroid/widget/SpectrumVisualizer$1;-><init>(Landroid/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 215
    const/high16 v0, 0x4100

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->div:F

    .line 216
    const/high16 v0, 0x4180

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->a:F

    .line 217
    const/high16 v0, 0x4000

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->b:F

    .line 218
    const/high16 v0, 0x3fc0

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->c:F

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 47
    const/16 v0, 0x200

    new-array v0, v0, [S

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 175
    new-instance v0, Landroid/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Landroid/widget/SpectrumVisualizer$1;-><init>(Landroid/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 215
    const/high16 v0, 0x4100

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->div:F

    .line 216
    const/high16 v0, 0x4180

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->a:F

    .line 217
    const/high16 v0, 0x4000

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->b:F

    .line 218
    const/high16 v0, 0x3fc0

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->c:F

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method static synthetic access$200(Landroid/widget/SpectrumVisualizer;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/SpectrumVisualizer;->update([B)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Landroid/widget/SpectrumVisualizer;->mDotbarHeight:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/SpectrumVisualizer;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPointData:[F

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/SpectrumVisualizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPixels:[I

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/SpectrumVisualizer;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Landroid/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/SpectrumVisualizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mShadowPixels:[I

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const/4 v15, 0x0

    .line 71
    .local v15, panelDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 72
    .local v13, dotBarDrawble:Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 73
    .local v16, shadowDotbarDrawable:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 74
    .local v17, symmetry:Z
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 76
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 77
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 79
    if-eqz p2, :cond_0

    .line 80
    sget-object v5, Lcom/android/internal/R$styleable;->SpectrumVisualizer:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 81
    .local v12, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 82
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 83
    const/4 v5, 0x3

    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 84
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 86
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    move v6, v0

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 87
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 88
    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 89
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    .end local v12           #a:Landroid/content/res/TypedArray;
    :cond_0
    if-nez v15, :cond_1

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080358

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 95
    :cond_1
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 96
    .local v14, panelBm:Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 97
    .local v19, visualizationWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 98
    .local v18, visualizationHeight:I
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/SpectrumVisualizer;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    if-nez v13, :cond_2

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080359

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 104
    :cond_2
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13           #dotBarDrawble:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 105
    .local v3, dotBar:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    .line 106
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 109
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 111
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v6, v0

    mul-int/2addr v5, v6

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SpectrumVisualizer;->mPixels:[I

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpectrumVisualizer;->mPixels:[I

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v10, v0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 114
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    move v5, v0

    div-int v5, v19, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    move v6, v0

    div-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    move v5, v0

    new-array v5, v5, [F

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SpectrumVisualizer;->mPointData:[F

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    move v5, v0

    if-nez v5, :cond_4

    .line 119
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    move v5, v0

    div-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 122
    :cond_4
    if-eqz v17, :cond_8

    .line 123
    if-nez v16, :cond_5

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108035a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 127
    :cond_5
    move-object/from16 v0, v16

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v17, v0

    .end local v17           #symmetry:Z
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 128
    .local v4, shadowDotBar:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v5, v0

    sub-int v5, v18, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 133
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    move v6, v0

    if-ge v5, v6, :cond_7

    .line 135
    new-instance v5, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Landroid/widget/SpectrumVisualizer;Landroid/widget/SpectrumVisualizer$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    .line 145
    .end local v4           #shadowDotBar:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 139
    .restart local v4       #shadowDotBar:Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move v6, v0

    mul-int/2addr v5, v6

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpectrumVisualizer;->mShadowPixels:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    move v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mCellSize:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 141
    new-instance v5, Landroid/widget/SpectrumVisualizer$SymmetryDotBar;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Landroid/widget/SpectrumVisualizer;Landroid/widget/SpectrumVisualizer$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_0

    .line 143
    .end local v4           #shadowDotBar:Landroid/graphics/Bitmap;
    .restart local v17       #symmetry:Z
    :cond_8
    new-instance v5, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Landroid/widget/SpectrumVisualizer;Landroid/widget/SpectrumVisualizer$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_0
.end method

.method private update([B)V
    .locals 14
    .parameter "fFtBuffer"

    .prologue
    .line 222
    iget-boolean v10, p0, Landroid/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    invoke-static {v10}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 223
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 231
    if-eqz p1, :cond_0

    .line 234
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/16 v10, 0x100

    if-ge v4, v10, :cond_3

    .line 235
    mul-int/lit8 v10, v4, 0x2

    aget-byte v0, p1, v10

    .line 236
    .local v0, a:I
    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-byte v1, p1, v10

    .line 237
    .local v1, b:I
    mul-int v10, v0, v0

    mul-int v11, v1, v1

    add-int v2, v10, v11

    .line 239
    .local v2, c:I
    iget-object v10, p0, Landroid/widget/SpectrumVisualizer;->mSampleBuf:[S

    const/16 v11, 0x7fff

    if-ge v2, v11, :cond_2

    move v11, v2

    :goto_2
    int-to-short v11, v11

    aput-short v11, v10, v4

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    :cond_2
    const/16 v11, 0x7fff

    goto :goto_2

    .line 242
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #c:I
    :cond_3
    const/4 v7, 0x0

    .line 243
    .local v7, srcIdx:I
    const/4 v3, 0x0

    .line 244
    .local v3, count:I
    const/4 v4, 0x0

    :goto_3
    iget v10, p0, Landroid/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    if-ge v4, v10, :cond_5

    .line 245
    const-wide/16 v5, 0x0

    .line 249
    .local v5, max:D
    :goto_4
    const/16 v10, 0x100

    if-ge v3, v10, :cond_4

    .line 252
    iget-object v10, p0, Landroid/widget/SpectrumVisualizer;->mSampleBuf:[S

    aget-short v10, v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v7

    iget v12, p0, Landroid/widget/SpectrumVisualizer;->a:F

    div-float/2addr v11, v12

    iget v12, p0, Landroid/widget/SpectrumVisualizer;->b:F

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-double v8, v10

    .line 254
    .local v8, val:D
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 255
    add-int/lit8 v7, v7, 0x1

    .line 256
    iget v10, p0, Landroid/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    add-int/2addr v3, v10

    .line 257
    goto :goto_4

    .line 258
    .end local v8           #val:D
    :cond_4
    add-int/lit16 v3, v3, -0x100

    .line 262
    iget v10, p0, Landroid/widget/SpectrumVisualizer;->div:F

    float-to-double v10, v10

    div-double v10, v5, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    iget v12, p0, Landroid/widget/SpectrumVisualizer;->c:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    div-double/2addr v10, v12

    iget v12, p0, Landroid/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 265
    iget-object v10, p0, Landroid/widget/SpectrumVisualizer;->mPointData:[F

    double-to-float v11, v5

    iget v12, p0, Landroid/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget-object v12, p0, Landroid/widget/SpectrumVisualizer;->mPointData:[F

    aget v12, v12, v4

    const v13, 0x3dcccccd

    sub-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v10, v4

    .line 244
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 268
    .end local v5           #max:D
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SpectrumVisualizer;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public enableDrawing(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 172
    iput-boolean p1, p0, Landroid/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 173
    return-void
.end method

.method public enableUpdate(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 185
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    if-eq v0, p1, :cond_1

    .line 186
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 188
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 190
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v1, p0, Landroid/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 194
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 201
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 208
    :cond_1
    :goto_1
    return-void

    .line 196
    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 198
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    goto :goto_1

    .line 205
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 150
    iget-boolean v2, p0, Landroid/widget/SpectrumVisualizer;->mEnableDrawing:Z

    if-nez v2, :cond_1

    .line 169
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    iget v2, p0, Landroid/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    iget v3, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    sub-int v0, v2, v3

    .line 157
    .local v0, end:I
    iget v1, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 158
    iget-object v2, p0, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    invoke-interface {v2, p1, v1}, Landroid/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_2
    iget v1, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :goto_1
    if-lez v1, :cond_0

    .line 163
    iget-object v2, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v3, v1, 0xff

    iget v4, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    iget-object v2, p0, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-interface {v2, p1, v3}, Landroid/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 166
    iget-object v2, p0, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    iget v3, p0, Landroid/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    sub-int/2addr v3, v1

    invoke-interface {v2, p1, v3}, Landroid/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 162
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
