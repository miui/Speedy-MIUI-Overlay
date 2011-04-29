.class public Landroid/app/ThemeResource;
.super Ljava/lang/Object;
.source "ThemeResource.java"


# static fields
.field private static final DEFAULT_PATH_FORMAT_STRING:Ljava/lang/String; = "%s/%s"

.field public static final sFrameworkPath:Ljava/lang/String; = "framework-res"

.field public static final sIconsPath:Ljava/lang/String; = "icons"

.field public static final sNativeDarkThemePath:Ljava/lang/String; = "/system/media/theme/native_dark"

.field public static final sThemePath:Ljava/lang/String; = "/data/system/theme1"

.field public static final sValueFilename:Ljava/lang/String; = "theme_values.xml"


# instance fields
.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mDimensions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameworkThemePath:Ljava/lang/String;

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageFrameworkThemePath:Ljava/lang/String;

.field private mPackageThemePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 8
    .parameter "packageName"
    .parameter "resource"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v7, "%s/%s"

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v3, p0, Landroid/app/ThemeResource;->mPackageThemePath:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Landroid/app/ThemeResource;->mPackageFrameworkThemePath:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Landroid/app/ThemeResource;->mFrameworkThemePath:Ljava/lang/String;

    .line 44
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/ThemeResource;->mIntegers:Landroid/util/SparseArray;

    .line 45
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/ThemeResource;->mCharSequences:Landroid/util/SparseArray;

    .line 46
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/ThemeResource;->mDimensions:Landroid/util/SparseArray;

    .line 67
    iget-object v1, p0, Landroid/app/ThemeResource;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 68
    iget-object v1, p0, Landroid/app/ThemeResource;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 69
    iget-object v1, p0, Landroid/app/ThemeResource;->mDimensions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 71
    const-string v1, "%s/%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "/data/system/theme1"

    aput-object v2, v1, v4

    const-string v2, "framework-res"

    aput-object v2, v1, v5

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ThemeResource;->mFrameworkThemePath:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/ThemeResource;->mFrameworkThemePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    iput-object v3, p0, Landroid/app/ThemeResource;->mFrameworkThemePath:Ljava/lang/String;

    .line 79
    :goto_0
    const-string v1, "%s/%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "/data/system/theme1"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ThemeResource;->mPackageThemePath:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/ThemeResource;->mPackageThemePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    iput-object v3, p0, Landroid/app/ThemeResource;->mPackageThemePath:Ljava/lang/String;

    .line 96
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 97
    .local v0, compat:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->isCompatibilityMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-string v1, "/system/media/theme/native_dark"

    const-string v2, "android"

    invoke-virtual {p0, v1, v2, p2}, Landroid/app/ThemeResource;->mergeIntegersFromTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 100
    :cond_1
    return-void

    .line 76
    .end local v0           #compat:Landroid/content/res/CompatibilityInfo;
    :cond_2
    iget-object v1, p0, Landroid/app/ThemeResource;->mFrameworkThemePath:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {p0, v1, v2, p2}, Landroid/app/ThemeResource;->mergeIntegersFromTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v1, p0, Landroid/app/ThemeResource;->mPackageThemePath:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Landroid/app/ThemeResource;->mergeIntegersFromTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 85
    const-string v1, "%s/%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/app/ThemeResource;->mPackageThemePath:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "framework-res"

    aput-object v2, v1, v5

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ThemeResource;->mPackageFrameworkThemePath:Ljava/lang/String;

    .line 86
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/ThemeResource;->mPackageFrameworkThemePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iput-object v3, p0, Landroid/app/ThemeResource;->mPackageFrameworkThemePath:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/app/ThemeResource;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/app/ThemeResource;->mIntegers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/ThemeResource;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/app/ThemeResource;->mCharSequences:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ThemeResource;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/app/ThemeResource;->mDimensions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static get3rdPartyAppIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "resource"
    .parameter "name"

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v2, "%s/%s/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "/data/system/theme1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "icons"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, pathName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 63
    :cond_0
    return-object v0
.end method

.method private getThemeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 5
    .parameter "path"
    .parameter "fileName"

    .prologue
    .line 136
    new-instance v1, Ljava/io/File;

    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 141
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 144
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static has3rdPartyAppIcon(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 5
    .parameter "resource"
    .parameter "name"

    .prologue
    .line 49
    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "/data/system/theme1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "icons"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"

    .prologue
    .line 111
    iget-object v0, p0, Landroid/app/ThemeResource;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getThemeDimension(I)Ljava/lang/Integer;
    .locals 1
    .parameter "id"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/app/ThemeResource;->mDimensions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .parameter "cookie"
    .parameter "fileName"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 121
    iget-object v1, p0, Landroid/app/ThemeResource;->mPackageFrameworkThemePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Landroid/app/ThemeResource;->mPackageFrameworkThemePath:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Landroid/app/ThemeResource;->getThemeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 124
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/app/ThemeResource;->mFrameworkThemePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Landroid/app/ThemeResource;->mFrameworkThemePath:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Landroid/app/ThemeResource;->getThemeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 132
    :cond_1
    :goto_0
    return-object v0

    .line 128
    :cond_2
    iget-object v1, p0, Landroid/app/ThemeResource;->mPackageThemePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Landroid/app/ThemeResource;->mPackageThemePath:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Landroid/app/ThemeResource;->getThemeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .parameter "id"

    .prologue
    .line 107
    iget-object v0, p0, Landroid/app/ThemeResource;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public hasTypedTheme()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/app/ThemeResource;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/app/ThemeResource;->mDimensions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeIntegersFromTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 8
    .parameter "path"
    .parameter "packageName"
    .parameter "resource"

    .prologue
    .line 161
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v4, "%s/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, "theme_values.xml"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 163
    .local v3, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 164
    .local v2, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v1, Landroid/app/ThemeResource$1;

    invoke-direct {v1, p0, p3, p2}, Landroid/app/ThemeResource$1;-><init>(Landroid/app/ThemeResource;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 240
    .local v1, saxHandler:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-virtual {v2, v0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #saxHandler:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v2           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v3           #spf:Ljavax/xml/parsers/SAXParserFactory;
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v4

    goto :goto_0

    .line 244
    :catch_1
    move-exception v4

    goto :goto_0

    .line 243
    :catch_2
    move-exception v4

    goto :goto_0

    .line 242
    :catch_3
    move-exception v4

    goto :goto_0
.end method
