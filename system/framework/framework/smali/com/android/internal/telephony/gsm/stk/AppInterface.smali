.class public interface abstract Lcom/android/internal/telephony/gsm/stk/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final STK_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final STK_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"


# virtual methods
.method public abstract onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
.end method
