.class Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;
.super Lcom/android/internal/util/HierarchicalStateMachine;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$1;,
        Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;,
        Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;
    }
.end annotation


# static fields
.field private static final CMD_PARAMS_READY:I = 0x2

.field private static final CMD_START:I = 0x1

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;


# instance fields
.field private mCaller:Landroid/os/Handler;

.field private mCmdParamsFactory:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

.field private mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

.field private mStateCmdParamsReady:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;

.field private mStateStart:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 94
    const-string v0, "RilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/util/HierarchicalStateMachine;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 101
    invoke-static {p0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->getInstance(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    .line 102
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->decodeMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private decodeMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)Z
    .locals 5
    .parameter "rilMsg"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    .line 138
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    packed-switch v3, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    .line 172
    .local v0, decodingStarted:Z
    :goto_0
    return v0

    .line 141
    .end local v0           #decodingStarted:Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 142
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    .line 143
    const/4 v0, 0x0

    .line 144
    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 148
    .end local v0           #decodingStarted:Z
    :pswitch_1
    const/4 v2, 0x0

    .line 150
    .local v2, rawData:[B
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 159
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->decode([B)Lcom/android/internal/telephony/gsm/stk/BerTlv;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->make(Lcom/android/internal/telephony/gsm/stk/BerTlv;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    const/4 v0, 0x1

    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 151
    .end local v0           #decodingStarted:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 153
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .line 155
    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 161
    .end local v0           #decodingStarted:Z
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 163
    .local v1, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;->result()Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 164
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    .line 165
    const/4 v0, 0x0

    .line 167
    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 55
    const-class v0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V

    sput-object v1, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 57
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->start()V

    .line 59
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sendCmdForExecution(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .locals 4
    .parameter "rilMsg"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    const/16 v2, 0xa

    new-instance v3, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    return-void
.end method


# virtual methods
.method public sendMsgParamsDecoded(Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 2
    .parameter "resCode"
    .parameter "cmdParams"

    .prologue
    .line 81
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 83
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 85
    return-void
.end method

.method public sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .locals 2
    .parameter "rilMsg"

    .prologue
    .line 69
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 72
    return-void
.end method
