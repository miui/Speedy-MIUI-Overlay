.class Landroid/app/ThemeResource$1;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ThemeResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ThemeResource;->mergeIntegersFromTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ELEMENT_TYPE_BOOLEAN:I = 0x2

.field private static final ELEMENT_TYPE_DIMENSION:I = 0x4

.field private static final ELEMENT_TYPE_INTEGER:I = 0x1

.field private static final ELEMENT_TYPE_INVALIDE:I = -0x1

.field private static final ELEMENT_TYPE_STRING:I = 0x3


# instance fields
.field private mElementType:I

.field private mId:I

.field final synthetic this$0:Landroid/app/ThemeResource;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$resource:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/app/ThemeResource;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Landroid/app/ThemeResource$1;->this$0:Landroid/app/ThemeResource;

    iput-object p2, p0, Landroid/app/ThemeResource$1;->val$resource:Landroid/content/res/Resources;

    iput-object p3, p0, Landroid/app/ThemeResource$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 8
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 206
    iget v2, p0, Landroid/app/ThemeResource$1;->mElementType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 210
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    iget v2, p0, Landroid/app/ThemeResource$1;->mElementType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 216
    :pswitch_0
    const/4 v2, 0x1

    :try_start_0
    iput v2, p0, Landroid/app/ThemeResource$1;->mElementType:I

    .line 217
    iget-object v2, p0, Landroid/app/ThemeResource$1;->this$0:Landroid/app/ThemeResource;

    invoke-static {v2}, Landroid/app/ThemeResource;->access$000(Landroid/app/ThemeResource;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Landroid/app/ThemeResource$1;->mId:I

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v2

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v2, p0, Landroid/app/ThemeResource$1;->this$0:Landroid/app/ThemeResource;

    invoke-static {v2}, Landroid/app/ThemeResource;->access$000(Landroid/app/ThemeResource;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Landroid/app/ThemeResource$1;->mId:I

    const-string/jumbo v4, "true"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    .line 225
    :pswitch_2
    iget-object v2, p0, Landroid/app/ThemeResource$1;->this$0:Landroid/app/ThemeResource;

    invoke-static {v2}, Landroid/app/ThemeResource;->access$100(Landroid/app/ThemeResource;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Landroid/app/ThemeResource$1;->mId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 228
    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/TypedValue;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 229
    .local v0, dimen:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 230
    iget-object v2, p0, Landroid/app/ThemeResource$1;->this$0:Landroid/app/ThemeResource;

    invoke-static {v2}, Landroid/app/ThemeResource;->access$200(Landroid/app/ThemeResource;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Landroid/app/ThemeResource$1;->mId:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ThemeResource$1;->mElementType:I

    .line 238
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 176
    const-string v3, "package"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, attr_package:Ljava/lang/String;
    move-object v2, p2

    .line 178
    .local v2, attr_type:Ljava/lang/String;
    const-string v3, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, attr_name:Ljava/lang/String;
    iput v4, p0, Landroid/app/ThemeResource$1;->mElementType:I

    .line 182
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 187
    iput v4, p0, Landroid/app/ThemeResource$1;->mId:I

    .line 188
    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/app/ThemeResource$1;->val$resource:Landroid/content/res/Resources;

    invoke-virtual {v3, v0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_1
    iput v3, p0, Landroid/app/ThemeResource$1;->mId:I

    .line 191
    iget v3, p0, Landroid/app/ThemeResource$1;->mId:I

    if-lez v3, :cond_0

    .line 192
    const-string v3, "integer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "color"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    :cond_2
    const/4 v3, 0x1

    iput v3, p0, Landroid/app/ThemeResource$1;->mElementType:I

    goto :goto_0

    .line 188
    :cond_3
    iget-object v3, p0, Landroid/app/ThemeResource$1;->val$resource:Landroid/content/res/Resources;

    iget-object v4, p0, Landroid/app/ThemeResource$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 194
    :cond_4
    const-string v3, "bool"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 195
    const/4 v3, 0x2

    iput v3, p0, Landroid/app/ThemeResource$1;->mElementType:I

    goto :goto_0

    .line 196
    :cond_5
    const-string v3, "string"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 197
    const/4 v3, 0x3

    iput v3, p0, Landroid/app/ThemeResource$1;->mElementType:I

    goto :goto_0

    .line 198
    :cond_6
    const-string v3, "dimen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    const/4 v3, 0x4

    iput v3, p0, Landroid/app/ThemeResource$1;->mElementType:I

    goto :goto_0
.end method
