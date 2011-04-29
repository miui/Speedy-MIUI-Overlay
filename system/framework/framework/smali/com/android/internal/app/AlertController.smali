.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$2;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BOTTOM_TITLE_TO_CONTENT_MARGIN:I = 0xf

.field private static final LONG_MESSAGE_MIN_LEN:I = 0x28

.field private static final TOP_TITLE_TO_CONTENT_MARGIN:I = 0x1e


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBorderColorIndicator:Landroid/app/AlertDialog$Indicator;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mContent:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mForceUseLongMsgStyle:Z

.field private mGravity:I

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsContentChanged:Z

.field private mIsContextMenu:Z

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/app/AlertController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 3
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 108
    iput v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 122
    sget-object v0, Landroid/app/AlertDialog$Indicator;->Common:Landroid/app/AlertDialog$Indicator;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mBorderColorIndicator:Landroid/app/AlertDialog$Indicator;

    .line 124
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/internal/app/AlertController;->mGravity:I

    .line 128
    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 130
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mForceUseLongMsgStyle:Z

    .line 134
    new-instance v0, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 181
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 183
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 184
    new-instance v0, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 206
    :goto_0
    return v3

    .line 192
    :cond_0
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    move v3, v4

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 197
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 198
    .local v1, i:I
    :cond_2
    if-lez v1, :cond_3

    .line 199
    add-int/lit8 v1, v1, -0x1

    .line 200
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 201
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 202
    goto :goto_0

    :cond_3
    move v3, v4

    .line 206
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 639
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 640
    const/high16 v1, 0x3f00

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 641
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    return-void
.end method

.method private static getBackgroundRes(Landroid/app/AlertDialog$Indicator;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 645
    sget-object v0, Lcom/android/internal/app/AlertController$2;->$SwitchMap$android$app$AlertDialog$Indicator:[I

    invoke-virtual {p0}, Landroid/app/AlertDialog$Indicator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 657
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 647
    :pswitch_0
    const v0, 0x10802e5

    goto :goto_0

    .line 649
    :pswitch_1
    const v0, 0x10802e6

    goto :goto_0

    .line 651
    :pswitch_2
    const v0, 0x10802e9

    goto :goto_0

    .line 653
    :pswitch_3
    const v0, 0x10802fb

    goto :goto_0

    .line 655
    :pswitch_4
    const v0, 0x10802f8

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isLongMessage()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 579
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 583
    const/4 v2, 0x1

    .line 584
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 585
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 586
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v3, 0x0

    .line 587
    .local v3, whichButtons:I
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020019

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 588
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 591
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 598
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102001a

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 599
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 602
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 610
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102001b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 611
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 614
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 626
    :goto_2
    if-ne v3, v2, :cond_4

    .line 627
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 634
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 593
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 595
    or-int/2addr v3, v2

    goto :goto_0

    .line 604
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    or-int/2addr v3, v0

    goto :goto_1

    .line 616
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 619
    or-int/2addr v3, v1

    goto :goto_2

    .line 628
    :cond_4
    if-ne v3, v0, :cond_5

    .line 629
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 630
    :cond_5
    if-ne v3, v1, :cond_0

    .line 631
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v6

    .line 634
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)Z
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x1020181

    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 543
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 547
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    move v0, v2

    .line 575
    :goto_0
    return v0

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->isLongMessage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mForceUseLongMsgStyle:Z

    if-eqz v0, :cond_2

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const v1, 0x10802db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 564
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 565
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 566
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 570
    :cond_4
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v2

    .line 571
    goto :goto_0
.end method

.method private setupCustomView(Landroid/widget/FrameLayout;)Z
    .locals 5
    .parameter "customPanel"

    .prologue
    const/4 v3, -0x1

    .line 448
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 449
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x102002b

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 450
    .local v0, custom:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_0

    .line 452
    iget v1, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 463
    :cond_1
    const/4 v1, 0x1

    .end local v0           #custom:Landroid/widget/FrameLayout;
    :goto_0
    return v1

    .line 459
    .restart local p0
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020182

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 460
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 468
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 470
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 473
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102017d

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 477
    .local v4, titleTemplate:Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    move v5, v8

    .line 512
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #titleTemplate:Landroid/view/View;
    :goto_0
    return v5

    .line 480
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 487
    const/4 v0, 0x1

    .line 488
    .local v0, hasIcon:Z
    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v5, :cond_4

    .line 489
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-static {v6}, Lcom/android/internal/app/AlertController;->translateIconId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 499
    :goto_1
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    move v1, v8

    .line 501
    .local v1, hasTextTitle:Z
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->isLongMessage()Z

    move-result v2

    .line 502
    .local v2, isLongMessage:Z
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v6, :cond_9

    if-nez v2, :cond_9

    const v6, 0x102017e

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 503
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    move v6, v7

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    if-eqz v1, :cond_2

    .line 506
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v5, :cond_1

    if-eqz v2, :cond_2

    .line 508
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    const/16 v6, 0x1e

    invoke-virtual {v5, v7, v6, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 512
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_b

    :cond_3
    move v5, v8

    goto :goto_0

    .line 490
    .end local v1           #hasTextTitle:Z
    .end local v2           #isLongMessage:Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 491
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 492
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 493
    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    const/4 v0, 0x0

    goto :goto_1

    .line 496
    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const v6, 0x10801d6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    move v1, v7

    .line 499
    goto :goto_2

    .line 502
    .restart local v1       #hasTextTitle:Z
    .restart local v2       #isLongMessage:Z
    :cond_9
    const v6, 0x102017f

    goto :goto_3

    :cond_a
    move v6, v9

    .line 503
    goto :goto_4

    :cond_b
    move v5, v7

    .line 512
    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 14

    .prologue
    .line 395
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-nez v10, :cond_0

    .line 396
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    iput-object v10, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 397
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 400
    :cond_0
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x102017c

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 401
    .local v9, topPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v9}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 403
    .local v6, hasTitle:Z
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x1020180

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 404
    .local v1, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)Z

    move-result v4

    .line 405
    .local v4, hasContent:Z
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 406
    .local v7, layout:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v4, :cond_1

    .line 407
    if-nez v6, :cond_5

    .line 409
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v11, 0x0

    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 417
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x1020182

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 418
    .local v2, customPanel:Landroid/widget/FrameLayout;
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->setupCustomView(Landroid/widget/FrameLayout;)Z

    move-result v5

    .line 419
    .local v5, hasCustomView:Z
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .end local v7           #layout:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 420
    .restart local v7       #layout:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_2

    .line 421
    if-nez v6, :cond_7

    if-nez v4, :cond_7

    .line 422
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v11, 0x0

    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 431
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v3

    .line 433
    .local v3, hasButtons:Z
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x1020183

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 434
    .local v0, buttonPanel:Landroid/view/View;
    if-nez v3, :cond_3

    .line 435
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_3
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_4

    .line 439
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    iget v10, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    const/4 v11, -0x1

    if-le v10, v11, :cond_4

    .line 441
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    iget v11, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 442
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    iget v11, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setSelection(I)V

    .line 445
    :cond_4
    return-void

    .line 412
    .end local v0           #buttonPanel:Landroid/view/View;
    .end local v2           #customPanel:Landroid/widget/FrameLayout;
    .end local v3           #hasButtons:Z
    .end local v5           #hasCustomView:Z
    :cond_5
    iget v10, p0, Lcom/android/internal/app/AlertController;->mGravity:I

    const/16 v11, 0x30

    if-ne v10, v11, :cond_6

    const/16 v10, 0x1e

    move v8, v10

    .line 413
    .local v8, margin:I
    :goto_2
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7, v10, v8, v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 412
    .end local v8           #margin:I
    :cond_6
    const/16 v10, 0xf

    move v8, v10

    goto :goto_2

    .line 423
    .restart local v2       #customPanel:Landroid/widget/FrameLayout;
    .restart local v5       #hasCustomView:Z
    :cond_7
    if-nez v4, :cond_2

    .line 426
    iget v10, p0, Lcom/android/internal/app/AlertController;->mGravity:I

    const/16 v11, 0x30

    if-ne v10, v11, :cond_8

    const/16 v10, 0x1e

    move v8, v10

    .line 427
    .restart local v8       #margin:I
    :goto_3
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7, v10, v8, v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 426
    .end local v8           #margin:I
    :cond_8
    const/16 v10, 0xf

    move v8, v10

    goto :goto_3
.end method

.method private static translateIconId(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 520
    sparse-switch p0, :sswitch_data_0

    move v0, p0

    .line 537
    :goto_0
    return v0

    .line 522
    :sswitch_0
    const v0, 0x10801d3

    goto :goto_0

    .line 524
    :sswitch_1
    const v0, 0x10801d4

    goto :goto_0

    .line 526
    :sswitch_2
    const v0, 0x10801d5

    goto :goto_0

    .line 528
    :sswitch_3
    const v0, 0x10801d6

    goto :goto_0

    .line 530
    :sswitch_4
    const v0, 0x10801d7

    goto :goto_0

    .line 532
    :sswitch_5
    const v0, 0x10801d9

    goto :goto_0

    .line 534
    :sswitch_6
    const v0, 0x10801db

    goto :goto_0

    .line 520
    nop

    :sswitch_data_0
    .sparse-switch
        0x1080027 -> :sswitch_0
        0x1080028 -> :sswitch_1
        0x1080029 -> :sswitch_2
        0x108002a -> :sswitch_4
        0x108009b -> :sswitch_3
        0x10801d8 -> :sswitch_5
        0x10801da -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 371
    packed-switch p1, :pswitch_data_0

    .line 379
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 373
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 6

    .prologue
    const/high16 v4, 0x2

    .line 211
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 213
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v2}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 221
    .local v0, l:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090016

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mContent:Landroid/view/View;

    .line 222
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 223
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mContent:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v1, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 225
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 666
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 668
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 669
    .local v4, windowContent:Landroid/view/ViewGroup;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/app/AlertController;->mIsContentChanged:Z

    .line 670
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 671
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mContent:Landroid/view/View;

    if-ne v5, v6, :cond_3

    .line 672
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/app/AlertController;->mIsContentChanged:Z

    .line 678
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/app/AlertController;->mIsContentChanged:Z

    if-nez v5, :cond_2

    .line 679
    iget v5, p0, Lcom/android/internal/app/AlertController;->mGravity:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 681
    const/4 v1, -0x1

    .line 683
    .local v1, backRes:I
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_4

    .line 684
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 685
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 686
    const v5, 0x1030072

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 687
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mBorderColorIndicator:Landroid/app/AlertDialog$Indicator;

    invoke-static {v5}, Lcom/android/internal/app/AlertController;->getBackgroundRes(Landroid/app/AlertDialog$Indicator;)I

    move-result v1

    .line 693
    :cond_1
    :goto_1
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 694
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 697
    .end local v1           #backRes:I
    :cond_2
    return-void

    .line 670
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 688
    .restart local v1       #backRes:I
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/app/AlertController;->mIsContextMenu:Z

    if-eqz v5, :cond_1

    .line 689
    const v1, 0x10802c3

    .line 690
    const v5, 0x1030073

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 289
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 293
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 297
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 313
    :goto_0
    return-void

    .line 301
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 302
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 306
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 307
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 244
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "g"

    .prologue
    .line 362
    sget-boolean v0, Lcom/android/internal/app/AlertController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 363
    :cond_0
    iput p1, p0, Lcom/android/internal/app/AlertController;->mGravity:I

    .line 364
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 321
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 322
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 323
    if-lez p1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    if-nez p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 333
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    :cond_0
    return-void
.end method

.method public setIndicator(Landroid/app/AlertDialog$Indicator;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mBorderColorIndicator:Landroid/app/AlertDialog$Indicator;

    .line 355
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 340
    return-void
.end method

.method public setIsContextMenu(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mIsContextMenu:Z

    .line 229
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 248
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public setUseLongMsgStyleForced(Z)V
    .locals 0
    .parameter "forceUseLongMsgStyle"

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceUseLongMsgStyle:Z

    .line 347
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 259
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 268
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 269
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 270
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 271
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 272
    return-void
.end method
