Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD07B651
	for <keys@linux.kernel.org>; Sun,  4 Feb 2024 07:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707031442; cv=none; b=oOVwgQjepIR0kZmLoT7zLBhXmZ4HzdEoHwNd15EAVTGWiRW803Kq43BuvBRJFXaz+MYwJ6KCEoIbOdJ5FV7tAsa/kYv5TZJCPWdiOxQC7PAsucGqj8yxpICQp6Fof3/HGXY5UFQs7ghJpfGYd8ywNbUgXCYE+A3zGT9fBL1/2lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707031442; c=relaxed/simple;
	bh=QNqaHqgcWcH7jgsAMai//djRf+PXcDKmCRICi7v9olI=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tjy/vAvfWII1UUpnrpbjbEQ3Uaz/+4BD5NNDUXp62mrjdNtWhc464Yws1y5TsD4iC4waLzIHGNeyOBYdBt40rnBZt/lL00DScfH3D0LxOw/y2l0KKo+WYgc6Srf2U0Svhhrt3g4I/J9y41sF5UCyqQdUMaW1hM83Fv9JAmHGkAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mcHuLfm6; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mcHuLfm6"
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-783045e88a6so239678385a.0
        for <keys@linux.kernel.org>; Sat, 03 Feb 2024 23:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707031440; x=1707636240; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:feedback-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zwne0f4TnEEtU71LBNAAu5Z5eyb0iP5ep2tBiHWg3LM=;
        b=mcHuLfm6F+UyVnlIeQBnFRy5Vz9OKiw72X0c4Bn3VIzZMnWnzqS/823iBImgr8wPfG
         vorchNwRB5pkgUavJbsnFYJgoiWahv0si53WVaq8FUxRvsKQ4iI/HnEy4lp+3+yzH2qY
         Z5AZIo7BGMSucsHQvGYzji/isW6Q2bJD2eja36pFO2yCGg1s3qgfxEnPrtlYJ48ntDuf
         rOIUdwQjdyjChD8uwjhbvlQaXDppcmXhjIK0xG/P61ptVVttBSn03XYFcFrmaRWP+bqg
         N3OB72Ri+WY3YRSGYjHv3o762pfkIbaHoaFM5ABth4qexRAdpc76e0nERTPLMnHLaAhv
         v3dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707031440; x=1707636240;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:feedback-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zwne0f4TnEEtU71LBNAAu5Z5eyb0iP5ep2tBiHWg3LM=;
        b=oq3fTQ3bHxpTz29XvFHUdTxQUL13ex9g8CVMIgkfJnoIuFek9H+4cf5Wr8nzbhcP2Q
         mZKInoFmVQQ27tFv8rS3LbCJe9ybc4OyrlAbMC81M9aBl2QkFZYtlww3tsIWOmEMFA/J
         1bUHtPveIzBKhy28AhS9IoIFseEeL/XLLhfmvt6Zf9vWLz4nRyZrAAtdEG2FHfZeRPTY
         dN0XYchTbaKBNa4hnP+qaxfFxyXH8uYYJv0OSx6nSQu7YM4AVDGJ2ImzDwHXeJSUslDD
         h37NIGzd4UqoMy87QX9O4l72tcatda5/9C1XvlW5L+JqMJ4rfV3OcGvx342/MTTsojik
         ocGA==
X-Gm-Message-State: AOJu0YyJR8iyGZUK6MRiJkp0hiBggHqXgXhoqEXCZ+Z00muPOYcFsA93
	pkIN3jKjLIx5kTF9jhkewCYwrtCaJgpgLEow7BmB3p4uvZqMHRZNK844gNqt
X-Google-Smtp-Source: AGHT+IEIWaxlmWIxWwgRioGxnP0svWkErXsB9vqxi8Uvui0aQ6mlKu01bb7oCL5XH1QslvkWgfqqrA==
X-Received: by 2002:a05:620a:444e:b0:785:79c7:a74a with SMTP id w14-20020a05620a444e00b0078579c7a74amr1395365qkp.54.1707031439831;
        Sat, 03 Feb 2024 23:23:59 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXMHxfrSIS1dhHaoXcwbPVS6g8UjYWl63gA3OUEa+qy9nH/fGIrpMQLrchRIE4hdaq3dLIExLATAMpLidIcYxPS
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com. [66.111.4.228])
        by smtp.gmail.com with ESMTPSA id x4-20020a05620a14a400b007853f736893sm2009799qkj.5.2024.02.03.23.23.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 23:23:58 -0800 (PST)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailauth.nyi.internal (Postfix) with ESMTP id AFBD827C005B;
	Sun,  4 Feb 2024 02:23:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sun, 04 Feb 2024 02:23:58 -0500
X-ME-Sender: <xms:jju_ZcOUGEGdNeaZsusDPHUY2U0chhIb46CqPcXPvigTPiYCyC-ATg>
    <xme:jju_ZS-l2FLy6Gnuu9ITTybBlFHKBLkyQmUA0aU4ik3v_AZxwYwmtfJpw9Ob6FiQB
    7DGfBwxEUvgruw3VA>
X-ME-Received: <xmr:jju_ZTTnWuuk6FwEMYBVKXT4SKFJE1U6kfna-ysaj0iVylf49mck3mU0tQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedujedguddtjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghnghes
    ghhmrghilhdrtghomheqnecuggftrfgrthhtvghrnhepvdelieegudfggeevjefhjeevue
    evieetjeeikedvgfejfeduheefhffggedvgeejnecuvehluhhsthgvrhfuihiivgeptden
    ucfrrghrrghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrh
    hsohhnrghlihhthidqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgv
    nhhgpeepghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:jju_ZUuVQGK75V0sZ89UMaB1TV8AdFiNI_8HM8_Ki04f4rZk1OonAQ>
    <xmx:jju_ZUe3CMO8mRo848qhqX3Zd5FcUrYZ3_UmRuM8eX3g7OwxGn_V7w>
    <xmx:jju_ZY1vuudIX4WMUqoqagulB2D993onjDUD0jQFH4apBXjcDmIO-g>
    <xmx:jju_ZQHfOguk2Gl2a9HKjRoFYJkBvj1V2za_G0orpDVWIJkw0Iz09w>
Feedback-ID: iad51458e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Feb 2024 02:23:58 -0500 (EST)
Date: Sat, 3 Feb 2024 23:23:57 -0800
From: Boqun Feng <boqun.feng@gmail.com>
To: keys@linux.kernel.org
Subject: Re: Request to add my key into the kernel developer keyring
Message-ID: <Zb87jZcupWnvEWeQ@Boquns-Mac-mini.home>
References: <Zb85svHiBS8Hpiwy@tardis>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zb85svHiBS8Hpiwy@tardis>

On Sat, Feb 03, 2024 at 11:16:02PM -0800, Boqun Feng wrote:
> Hi,
> 
> Could you please add my key into the linux kernel developer keyring?
> 
> The key is attached.

To be clear the file name of the key is the "export.asc"

Regards,
Boqun

> 
> Thanks!
> 
> Regards,
> Boqun

[...]
