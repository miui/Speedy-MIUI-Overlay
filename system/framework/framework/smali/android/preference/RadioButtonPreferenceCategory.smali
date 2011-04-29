.class public Landroid/preference/RadioButtonPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "RadioButtonPreferenceCategory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreferenceCategory"


# instance fields
.field private mCheckedPosition:I

.field private mRadioButtonPreference:Landroid/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Landroid/preference/RadioButtonPreference;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 20
    return-void
.end method


# virtual methods
.method public addPreference(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 24
    instance-of v1, p1, Landroid/preference/RadioButtonPreference;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only CheckBoxPreference can be added toRadioButtonPreferenceCategory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-result v0

    .line 28
    .local v0, added:Z
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 32
    :cond_1
    return v0
.end method

.method public getCheckedPosition()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return v0
.end method

.method public getCheckedPreference()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Landroid/preference/RadioButtonPreference;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 63
    iget-object v1, p0, Landroid/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Landroid/preference/RadioButtonPreference;

    if-eq p1, v1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Landroid/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/preference/RadioButtonPreferenceCategory;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    .line 67
    .local v0, listener:Landroid/preference/Preference$OnPreferenceClickListener;
    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 70
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public setCheckedPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 51
    return-void
.end method

.method public setCheckedPreference(Landroid/preference/Preference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/preference/RadioButtonPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 37
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 38
    invoke-virtual {p0, v1}, Landroid/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RadioButtonPreference;

    .line 39
    .local v2, pref:Landroid/preference/RadioButtonPreference;
    if-ne v2, p1, :cond_0

    .line 40
    iput-object v2, p0, Landroid/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Landroid/preference/RadioButtonPreference;

    .line 41
    iput v1, p0, Landroid/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 42
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    .line 37
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 47
    .end local v2           #pref:Landroid/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method
