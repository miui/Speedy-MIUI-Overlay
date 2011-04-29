.class public Landroid/preference/CheckBoxPreference;
.super Landroid/preference/Preference;
.source "CheckBoxPreference.java"

# interfaces
.implements Landroid/widget/SlidingButton$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/CheckBoxPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mChecked:Z

.field private mDisableDependentsState:Z

.field private mSendAccessibilityEventViewClickedType:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-object v1, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 64
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mDisableDependentsState:Z

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/preference/CheckBoxPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 70
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/preference/CheckBoxPreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/preference/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/preference/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 84
    const v8, 0x1020001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, checkboxView:Landroid/view/View;
    if-eqz v2, :cond_1

    instance-of v8, v2, Landroid/widget/Checkable;

    if-eqz v8, :cond_1

    .line 86
    move-object v0, v2

    check-cast v0, Landroid/widget/Checkable;

    move-object v8, v0

    iget-boolean v9, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    invoke-interface {v8, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 87
    instance-of v8, v2, Landroid/widget/SlidingButton;

    if-eqz v8, :cond_0

    .line 88
    move-object v0, v2

    check-cast v0, Landroid/widget/SlidingButton;

    move-object v1, v0

    .line 89
    .local v1, button:Landroid/widget/SlidingButton;
    invoke-virtual {v1, p0}, Landroid/widget/SlidingButton;->setOnCheckedChangedListener(Landroid/widget/SlidingButton$OnCheckedChangedListener;)V

    .line 95
    .end local v1           #button:Landroid/widget/SlidingButton;
    :cond_0
    iget-boolean v8, p0, Landroid/preference/CheckBoxPreference;->mSendAccessibilityEventViewClickedType:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/preference/CheckBoxPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/preference/CheckBoxPreference;->mSendAccessibilityEventViewClickedType:Z

    .line 100
    const/4 v3, 0x1

    .line 101
    .local v3, eventType:I
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 106
    .end local v3           #eventType:I
    :cond_1
    const v8, 0x1020010

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 107
    .local v6, summaryView:Landroid/widget/TextView;
    if-eqz v6, :cond_5

    .line 108
    const/4 v7, 0x1

    .line 109
    .local v7, useDefaultSummary:Z
    iget-boolean v8, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/preference/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v8, :cond_6

    .line 110
    iget-object v8, p0, Landroid/preference/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v7, 0x0

    .line 117
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 118
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    .line 119
    .local v5, summary:Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 120
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const/4 v7, 0x0

    .line 125
    .end local v5           #summary:Ljava/lang/CharSequence;
    :cond_3
    const/16 v4, 0x8

    .line 126
    .local v4, newVisibility:I
    if-nez v7, :cond_4

    .line 128
    const/4 v4, 0x0

    .line 130
    :cond_4
    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eq v4, v8, :cond_5

    .line 131
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    .end local v4           #newVisibility:I
    .end local v7           #useDefaultSummary:Z
    :cond_5
    return-void

    .line 112
    .restart local v7       #useDefaultSummary:Z
    :cond_6
    iget-boolean v8, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/preference/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v8, :cond_2

    .line 113
    iget-object v8, p0, Landroid/preference/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 141
    iget-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    if-ne p1, v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    .line 146
    .local v0, parent:Landroid/preference/PreferenceGroup;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_2

    .line 147
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_2
    if-eqz v0, :cond_0

    .line 154
    if-nez p1, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    .line 155
    check-cast v0, Landroid/preference/PreferenceScreen;

    .end local v0           #parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    .line 154
    .restart local v0       #parent:Landroid/preference/PreferenceGroup;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 159
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 161
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 165
    .local v0, newValue:Z
    :goto_0
    iput-boolean v2, p0, Landroid/preference/CheckBoxPreference;->mSendAccessibilityEventViewClickedType:Z

    .line 167
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    :goto_1
    return-void

    .line 161
    .end local v0           #newValue:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 171
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 306
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/preference/CheckBoxPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference$SavedState;

    move-object v1, v0

    .line 313
    .local v1, myState:Landroid/preference/CheckBoxPreference$SavedState;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 314
    iget-boolean v2, v1, Landroid/preference/CheckBoxPreference$SavedState;->checked:Z

    invoke-virtual {p0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 293
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 294
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 301
    :goto_0
    return-object v2

    .line 299
    :cond_0
    new-instance v0, Landroid/preference/CheckBoxPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 300
    .local v0, myState:Landroid/preference/CheckBoxPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/preference/CheckBoxPreference$SavedState;->checked:Z

    move-object v2, v0

    .line 301
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 287
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 289
    return-void

    .line 287
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 180
    iget-boolean v0, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 181
    iput-boolean p1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    .line 182
    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->persistBoolean(Z)Z

    .line 183
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->notifyDependencyChange(Z)V

    .line 184
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    .line 186
    :cond_0
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .parameter "disableDependentsState"

    .prologue
    .line 277
    iput-boolean p1, p0, Landroid/preference/CheckBoxPreference;->mDisableDependentsState:Z

    .line 278
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 237
    iput-object p1, p0, Landroid/preference/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 238
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    .line 241
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 209
    iput-object p1, p0, Landroid/preference/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 210
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    .line 213
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    iget-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mDisableDependentsState:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    move v0, v1

    .line 200
    .local v0, shouldDisable:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v1, v3

    :goto_1
    return v1

    .line 199
    .end local v0           #shouldDisable:Z
    :cond_1
    iget-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    if-nez v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .restart local v0       #shouldDisable:Z
    :cond_3
    move v1, v2

    .line 200
    goto :goto_1
.end method
