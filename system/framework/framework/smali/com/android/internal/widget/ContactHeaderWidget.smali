.class public Lcom/android/internal/widget/ContactHeaderWidget;
.super Landroid/widget/FrameLayout;
.source "ContactHeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;,
        Lcom/android/internal/widget/ContactHeaderWidget$PhotoQuery;,
        Lcom/android/internal/widget/ContactHeaderWidget$OrganizationQuery;,
        Lcom/android/internal/widget/ContactHeaderWidget$ContactQuery;,
        Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;
    }
.end annotation


# static fields
.field protected static final CONTACT_LOOKUP_ID_COLUMN_INDEX:I = 0x0

.field protected static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field protected static final EMAIL_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final EMAIL_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field protected static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field protected static final PHONE_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final PHONE_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field protected static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final ROUND_CORNER_XY:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ContactHeaderWidget"

.field private static final TOKEN_COMPANY_TITLE_QUERY:I = 0x4

.field private static final TOKEN_CONTACT_INFO:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHOTO_QUERY:I = 0x3


# instance fields
.field private mAggregateBadge:Landroid/view/View;

.field protected mContactUri:Landroid/net/Uri;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private mDisplayNameViewAlt:Landroid/widget/TextView;

.field private mEditView:Landroid/widget/ImageView;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

.field private mNoPhotoResource:I

.field private mOrganizationCompany:Landroid/widget/TextView;

.field private mOrganizationTitle:Landroid/widget/TextView;

.field private mPhoneticNameView:Landroid/widget/TextView;

.field private mPhotoView:Landroid/widget/QuickContactBadge;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

.field private mSelfStatusView:Landroid/widget/TextView;

.field private mStarImage:Landroid/widget/ImageView;

.field private mStarredView:Landroid/widget/CheckBox;

.field private mStatusAttributionView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;

.field private mUnknownContactLocation:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "lookup"

    const-string v5, "_id"

    .line 161
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "lookup"

    aput-object v6, v0, v3

    sput-object v0, Lcom/android/internal/widget/ContactHeaderWidget;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 169
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v6, v0, v3

    sput-object v0, Lcom/android/internal/widget/ContactHeaderWidget;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 178
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    sput-object v0, Lcom/android/internal/widget/ContactHeaderWidget;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 204
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109001f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 206
    const v1, 0x1020197

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    .line 207
    const v1, 0x1020198

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    .line 208
    const v1, 0x1020196

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    .line 210
    const v1, 0x102019a

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    .line 211
    const v1, 0x102019b

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mSelfStatusView:Landroid/widget/TextView;

    .line 212
    const v1, 0x10201a1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    .line 213
    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v1, 0x1020195

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarImage:Landroid/widget/ImageView;

    .line 215
    const v1, 0x1020003

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mEditView:Landroid/widget/ImageView;

    .line 216
    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v1, 0x1020194

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    .line 219
    const v1, 0x1020199

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    .line 221
    const v1, 0x102019d

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mOrganizationCompany:Landroid/widget/TextView;

    .line 222
    const v1, 0x102019e

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mOrganizationTitle:Landroid/widget/TextView;

    .line 223
    const v1, 0x102019f

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    .line 224
    const v1, 0x10201a0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    .line 225
    const v1, 0x102019c

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mUnknownContactLocation:Landroid/widget/TextView;

    .line 227
    const v1, 0x10801d2

    iput v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mNoPhotoResource:I

    .line 229
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ContactHeaderWidget;)Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ContactHeaderWidget;->startContactOrganizationQuery(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mUnknownContactLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mOrganizationTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mOrganizationCompany:Landroid/widget/TextView;

    return-object v0
.end method

.method private bindFromContactUriInternal(Landroid/net/Uri;Z)V
    .locals 0
    .parameter "contactUri"
    .parameter "resetQueryHandler"

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 566
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ContactHeaderWidget;->startContactQuery(Landroid/net/Uri;Z)V

    .line 567
    return-void
.end method

.method private loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "options"

    .prologue
    .line 799
    iget v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mNoPhotoResource:I

    if-nez v0, :cond_0

    .line 800
    const/4 v0, 0x0

    .line 802
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mNoPhotoResource:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private performDisplayNameClick()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;->onDisplayNameClick(Landroid/view/View;)V

    .line 255
    :cond_0
    return-void
.end method

.method private performPhotoClick()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;->onPhotoClick(Landroid/view/View;)V

    .line 249
    :cond_0
    return-void
.end method

.method private resetAsyncQueryHandler()V
    .locals 2

    .prologue
    .line 667
    new-instance v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;-><init>(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    .line 668
    return-void
.end method

.method private startContactOrganizationQuery(Landroid/net/Uri;Z)V
    .locals 8
    .parameter "contactUri"
    .parameter "resetQueryHandler"

    .prologue
    const/4 v6, 0x0

    .line 620
    if-eqz p2, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x4

    sget-object v4, Lcom/android/internal/widget/ContactHeaderWidget$OrganizationQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "mimetype=\'vnd.android.cursor.item/organization\'"

    move-object v2, p1

    move-object v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method private startContactQuery(Landroid/net/Uri;Z)V
    .locals 8
    .parameter "contactUri"
    .parameter "resetQueryHandler"

    .prologue
    const/4 v5, 0x0

    .line 610
    if-eqz p2, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/internal/widget/ContactHeaderWidget$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p1

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method private updateStarred()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 791
    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 792
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 793
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "starred"

    iget-object v2, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 794
    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 796
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method protected bindContactInfo(Landroid/database/Cursor;)V
    .locals 23
    .parameter "c"

    .prologue
    .line 674
    const/4 v5, 0x3

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 675
    .local v11, displayName:Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 676
    .local v15, phoneticName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 678
    const/4 v5, 0x5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 679
    .local v20, starred:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarImage:Landroid/widget/ImageView;

    move-object v5, v0

    if-eqz v20, :cond_3

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    const/4 v5, 0x6

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 684
    const/4 v5, 0x6

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 685
    .local v17, presence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    move-object v5, v0

    invoke-static/range {v17 .. v17}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 692
    .end local v17           #presence:I
    :goto_2
    const/4 v5, 0x7

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 693
    .local v21, status:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    const/16 v22, 0x0

    .line 699
    .local v22, timestamp:Ljava/lang/CharSequence;
    const/16 v5, 0x8

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 700
    const/16 v5, 0x8

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 704
    .local v3, date:J
    const/high16 v9, 0x4

    .line 706
    .local v9, flags:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v22

    .line 710
    .end local v3           #date:J
    .end local v9           #flags:I
    :cond_0
    const/4 v13, 0x0

    .line 712
    .local v13, label:Ljava/lang/String;
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 713
    const/16 v5, 0x9

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 714
    .local v18, resPackage:Ljava/lang/String;
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 716
    .local v14, labelResource:I
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ContactHeaderWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 729
    .local v19, resources:Landroid/content/res/Resources;
    :goto_3
    if-eqz v19, :cond_1

    .line 731
    :try_start_0
    move-object/from16 v0, v19

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 740
    .end local v14           #labelResource:I
    .end local v18           #resPackage:Ljava/lang/String;
    .end local v19           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_4
    if-eqz v22, :cond_6

    if-eqz v13, :cond_6

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104027a

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v22, v7, v8

    const/4 v8, 0x1

    aput-object v13, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 753
    .local v10, attribution:Ljava/lang/CharSequence;
    :goto_5
    if-eqz v10, :cond_9

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    .end local v10           #attribution:Ljava/lang/CharSequence;
    .end local v13           #label:Ljava/lang/String;
    .end local v22           #timestamp:Ljava/lang/CharSequence;
    :goto_7
    return-void

    .line 678
    .end local v20           #starred:Z
    .end local v21           #status:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_0

    .line 680
    .restart local v20       #starred:Z
    :cond_3
    const/16 v6, 0x8

    goto/16 :goto_1

    .line 688
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 719
    .restart local v13       #label:Ljava/lang/String;
    .restart local v14       #labelResource:I
    .restart local v18       #resPackage:Ljava/lang/String;
    .restart local v21       #status:Ljava/lang/String;
    .restart local v22       #timestamp:Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 721
    .local v16, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .restart local v19       #resources:Landroid/content/res/Resources;
    goto :goto_3

    .line 722
    .end local v19           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v12

    .line 723
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ContactHeaderWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact status update resource package not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/16 v19, 0x0

    .restart local v19       #resources:Landroid/content/res/Resources;
    goto/16 :goto_3

    .line 732
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v12

    .line 733
    .local v12, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "ContactHeaderWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact status update resource not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 744
    .end local v12           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v14           #labelResource:I
    .end local v18           #resPackage:Ljava/lang/String;
    .end local v19           #resources:Landroid/content/res/Resources;
    :cond_6
    if-nez v22, :cond_7

    if-eqz v13, :cond_7

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040279

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 748
    .end local v10           #attribution:Ljava/lang/CharSequence;
    :cond_7
    if-eqz v22, :cond_8

    .line 749
    move-object/from16 v10, v22

    .restart local v10       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 751
    .end local v10           #attribution:Ljava/lang/CharSequence;
    :cond_8
    const/4 v10, 0x0

    .restart local v10       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 758
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 764
    .end local v10           #attribution:Ljava/lang/CharSequence;
    .end local v13           #label:Ljava/lang/String;
    .end local v22           #timestamp:Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public bindFromContactLookupUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactLookupUri"

    .prologue
    .line 554
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V

    .line 555
    return-void
.end method

.method public bindFromEmail(Ljava/lang/String;)V
    .locals 8
    .parameter "emailAddress"

    .prologue
    const/4 v5, 0x0

    .line 578
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 580
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x2

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/ContactHeaderWidget;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public bindFromPhoneNumber(Ljava/lang/String;)V
    .locals 8
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 594
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 596
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/ContactHeaderWidget;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public enableClickListeners()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p0}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method public getDisplayNmae()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isStared()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 772
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 787
    :goto_0
    return-void

    .line 775
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->updateStarred()V

    goto :goto_0

    .line 779
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->performPhotoClick()V

    goto :goto_0

    .line 783
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->performDisplayNameClick()V

    goto :goto_0

    .line 772
    :sswitch_data_0
    .sparse-switch
        0x1020194 -> :sswitch_1
        0x1020197 -> :sswitch_2
        0x10201a1 -> :sswitch_0
    .end sparse-switch
.end method

.method public setContactHeaderListener(Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

    .line 243
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ContactHeaderWidget;->setContactUri(Landroid/net/Uri;Z)V

    .line 449
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "sendToFastrack"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 456
    if-eqz p2, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 459
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "displayName"
    .parameter "phoneticName"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 1
    .parameter "excludeMimes"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setExcludeMimes([Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public setOnEditListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    return-void
.end method

.method public setOnStarChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 473
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 481
    return-void
.end method

.method public setPresence(I)V
    .locals 2
    .parameter "presence"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    return-void
.end method

.method public setSelectedContactsAppTabIndex(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setSelectedContactsAppTabIndex(I)V

    .line 398
    return-void
.end method

.method public setSelfStatus(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mSelfStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mSelfStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mSelfStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSocialSnippet(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "snippet"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 524
    if-nez p1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStared(Z)V
    .locals 1
    .parameter "starred"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 427
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->updateStarred()V

    .line 428
    return-void
.end method

.method public showAggregateBadge(Z)V
    .locals 2
    .parameter "showBagde"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    return-void

    .line 404
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showEdit(Z)V
    .locals 2
    .parameter "showEdit"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mEditView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    return-void

    .line 418
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showStar(Z)V
    .locals 2
    .parameter "showStar"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 412
    return-void

    .line 411
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected startPhotoQuery(JLandroid/net/Uri;Z)V
    .locals 8
    .parameter "photoId"
    .parameter "lookupKey"
    .parameter "resetQueryHandler"

    .prologue
    const/4 v5, 0x0

    .line 638
    if-eqz p4, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x3

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/ContactHeaderWidget$PhotoQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public wipeClean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 652
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 654
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->setSelfStatus(Ljava/lang/CharSequence;)V

    .line 656
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 657
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 658
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ContactHeaderWidget;->setPresence(I)V

    .line 659
    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 660
    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 661
    return-void
.end method
