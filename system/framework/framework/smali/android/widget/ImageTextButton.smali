.class public Landroid/widget/ImageTextButton;
.super Landroid/widget/LinearLayout;
.source "ImageTextButton.java"


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 37
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v7, 0x109002c

    invoke-virtual {v1, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const v7, 0x1020040

    invoke-virtual {p0, v7}, Landroid/widget/ImageTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/ImageTextButton;->mTextView:Landroid/widget/TextView;

    .line 40
    sget-object v7, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x2

    iget-object v8, p0, Landroid/widget/ImageTextButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 43
    .local v6, textSize:I
    iget-object v7, p0, Landroid/widget/ImageTextButton;->mTextView:Landroid/widget/TextView;

    int-to-float v8, v6

    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 46
    .local v5, textColor:Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_0

    .line 47
    iget-object v7, p0, Landroid/widget/ImageTextButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 50
    :cond_0
    const/16 v7, 0x32

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 51
    .local v2, left:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 52
    iget-object v7, p0, Landroid/widget/ImageTextButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_1
    const/16 v7, 0x34

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 56
    .local v3, padding:I
    iget-object v7, p0, Landroid/widget/ImageTextButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 58
    const/16 v7, 0x12

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, text:Ljava/lang/String;
    iget-object v7, p0, Landroid/widget/ImageTextButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/ImageTextButton;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method
