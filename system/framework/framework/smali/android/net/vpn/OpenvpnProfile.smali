.class public Landroid/net/vpn/OpenvpnProfile;
.super Landroid/net/vpn/VpnProfile;
.source "OpenvpnProfile.java"


# static fields
.field private static final DEVICE_TAP:Ljava/lang/String; = "tap"

.field private static final DEVICE_TUN:Ljava/lang/String; = "tun"

.field private static final PROTO_TCP:Ljava/lang/String; = "tcp"

.field private static final PROTO_UDP:Ljava/lang/String; = "udp"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCA:Ljava/lang/String;

.field private mCert:Ljava/lang/String;

.field private mCipher:Ljava/lang/String;

.field private mDevice:Ljava/lang/String;

.field private mExtra:Ljava/lang/String;

.field private mKeySize:I

.field private mLocalAddr:Ljava/lang/String;

.field private mPort:I

.field private mProto:Ljava/lang/String;

.field private mRedirectGateway:Z

.field private mRemoteAddr:Ljava/lang/String;

.field private mSupplyAddr:Z

.field private mUseCompLzo:Z

.field private mUserAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/net/vpn/VpnProfile;-><init>()V

    .line 37
    iput-boolean v1, p0, Landroid/net/vpn/OpenvpnProfile;->mUserAuth:Z

    .line 44
    const/16 v0, 0x4aa

    iput v0, p0, Landroid/net/vpn/OpenvpnProfile;->mPort:I

    .line 46
    const-string/jumbo v0, "udp"

    iput-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mProto:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Landroid/net/vpn/OpenvpnProfile;->mUseCompLzo:Z

    .line 50
    iput-boolean v1, p0, Landroid/net/vpn/OpenvpnProfile;->mSupplyAddr:Z

    .line 52
    iput-boolean v1, p0, Landroid/net/vpn/OpenvpnProfile;->mRedirectGateway:Z

    .line 58
    const-string/jumbo v0, "tun"

    iput-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mDevice:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCAName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mCA:Ljava/lang/String;

    return-object v0
.end method

.method public getCertName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mCert:Ljava/lang/String;

    return-object v0
.end method

.method public getCipher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mCipher:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceList()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 106
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 107
    .local v0, s:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "tun"

    aput-object v2, v0, v1

    .line 108
    const/4 v1, 0x1

    const-string v2, "tap"

    aput-object v2, v0, v1

    .line 109
    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/net/vpn/OpenvpnProfile;->mKeySize:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mLocalAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/net/vpn/OpenvpnProfile;->mPort:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mProto:Ljava/lang/String;

    return-object v0
.end method

.method public getProtoList()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 88
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 89
    .local v0, s:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "udp"

    aput-object v2, v0, v1

    .line 90
    const/4 v1, 0x1

    const-string v2, "tcp"

    aput-object v2, v0, v1

    .line 91
    return-object v0
.end method

.method public getRedirectGateway()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mRedirectGateway:Z

    return v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mRemoteAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplyAddr()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mSupplyAddr:Z

    return v0
.end method

.method public getType()Landroid/net/vpn/VpnType;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/net/vpn/VpnType;->OPENVPN:Landroid/net/vpn/VpnType;

    return-object v0
.end method

.method public getUseCompLzo()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mUseCompLzo:Z

    return v0
.end method

.method public getUserAuth()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mUserAuth:Z

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 216
    invoke-super {p0, p1}, Landroid/net/vpn/VpnProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/vpn/OpenvpnProfile;->mPort:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mProto:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mUserAuth:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mCA:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mCert:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mUseCompLzo:Z

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mRedirectGateway:Z

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mSupplyAddr:Z

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mLocalAddr:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mRemoteAddr:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mDevice:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mCipher:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/vpn/OpenvpnProfile;->mKeySize:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mExtra:Ljava/lang/String;

    .line 231
    return-void

    :cond_0
    move v0, v2

    .line 219
    goto :goto_0

    :cond_1
    move v0, v2

    .line 222
    goto :goto_1

    :cond_2
    move v0, v2

    .line 223
    goto :goto_2

    :cond_3
    move v0, v2

    .line 224
    goto :goto_3
.end method

.method public setCAName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 132
    iput-object p1, p0, Landroid/net/vpn/OpenvpnProfile;->mCA:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setCertName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 140
    iput-object p1, p0, Landroid/net/vpn/OpenvpnProfile;->mCert:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setCipher(Ljava/lang/String;)V
    .locals 0
    .parameter "cipher"

    .prologue
    .line 184
    iput-object p1, p0, Landroid/net/vpn/OpenvpnProfile;->mCipher:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 3
    .parameter "p"

    .prologue
    const-string/jumbo v2, "tun"

    const-string v1, "tap"

    .line 113
    const-string v0, "tap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "tap"

    iput-object v1, p0, Landroid/net/vpn/OpenvpnProfile;->mDevice:Ljava/lang/String;

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string/jumbo v0, "tun"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "tun"

    iput-object v2, p0, Landroid/net/vpn/OpenvpnProfile;->mDevice:Ljava/lang/String;

    goto :goto_0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 207
    iput-object p1, p0, Landroid/net/vpn/OpenvpnProfile;->mExtra:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setKeySize(Ljava/lang/String;)V
    .locals 1
    .parameter "keysize"

    .prologue
    .line 193
    :try_start_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/vpn/OpenvpnProfile;->mKeySize:I

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/vpn/OpenvpnProfile;->mKeySize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLocalAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 168
    iput-object p1, p0, Landroid/net/vpn/OpenvpnProfile;->mLocalAddr:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 1
    .parameter "port"

    .prologue
    .line 73
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/vpn/OpenvpnProfile;->mPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setProto(Ljava/lang/String;)V
    .locals 3
    .parameter "p"

    .prologue
    const-string/jumbo v2, "udp"

    const-string v1, "tcp"

    .line 95
    const-string v0, "tcp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "tcp"

    iput-object v1, p0, Landroid/net/vpn/OpenvpnProfile;->mProto:Ljava/lang/String;

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string/jumbo v0, "udp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v0, "udp"

    iput-object v2, p0, Landroid/net/vpn/OpenvpnProfile;->mProto:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRedirectGateway(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/net/vpn/OpenvpnProfile;->mRedirectGateway:Z

    .line 153
    return-void
.end method

.method public setRemoteAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 176
    iput-object p1, p0, Landroid/net/vpn/OpenvpnProfile;->mRemoteAddr:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setSupplyAddr(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 160
    iput-boolean p1, p0, Landroid/net/vpn/OpenvpnProfile;->mSupplyAddr:Z

    .line 161
    return-void
.end method

.method public setUseCompLzo(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 144
    iput-boolean p1, p0, Landroid/net/vpn/OpenvpnProfile;->mUseCompLzo:Z

    .line 145
    return-void
.end method

.method public setUserAuth(Z)V
    .locals 0
    .parameter "auth"

    .prologue
    .line 124
    iput-boolean p1, p0, Landroid/net/vpn/OpenvpnProfile;->mUserAuth:Z

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-super {p0, p1, p2}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 236
    iget v0, p0, Landroid/net/vpn/OpenvpnProfile;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mProto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mUserAuth:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mCA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mUseCompLzo:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mRedirectGateway:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-boolean v0, p0, Landroid/net/vpn/OpenvpnProfile;->mSupplyAddr:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mLocalAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mRemoteAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mDevice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mCipher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget v0, p0, Landroid/net/vpn/OpenvpnProfile;->mKeySize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v0, p0, Landroid/net/vpn/OpenvpnProfile;->mExtra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    return-void

    :cond_0
    move v0, v1

    .line 238
    goto :goto_0

    :cond_1
    move v0, v1

    .line 241
    goto :goto_1

    :cond_2
    move v0, v1

    .line 242
    goto :goto_2

    :cond_3
    move v0, v1

    .line 243
    goto :goto_3
.end method
