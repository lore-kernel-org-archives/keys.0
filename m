Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624CB6FDF
	for <keys@linux.kernel.org>; Fri, 24 Mar 2023 15:35:11 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id bz27so1817479qtb.1
        for <keys@linux.kernel.org>; Fri, 24 Mar 2023 08:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1679672110;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t3aEkmKiZU2pBZPmQEuc9puD2dbrpQSq65VOVwbZYeI=;
        b=LAkXOEb2Qgqd5mw9ohfzp4gEnme70QCQFOc4XWY64lb2/F3E7E5TDTjwNTTgFPBMrP
         eapmQG9+ygY0WhmfRgOuNKVwtEfKRUdAnI56vL/WDbgwyGKPEv6ShqBux+WwssdPXrOF
         n5p3C7eZy8GHuAqQn/d9DefBdX0qo7bD+wu/k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679672110;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t3aEkmKiZU2pBZPmQEuc9puD2dbrpQSq65VOVwbZYeI=;
        b=AhxrvalTd02urMg0ArCb7ePJs0Of1E5RPBxp9f1QfmJN/c8ACPLUow7YZkLMagrxmS
         veFNANBHKroKisi5LfVrHPuKc4Cbqqlm9oEOr5o4Tfiau8CHh3Tf9Xt6SL6bLtABxvFD
         3tMJgmOk6jkQenynXQ8udKuaMFYXFa2ggtc8joGFQN6cP6ZVcLC2MzRlykQlIRCIRsSN
         MGwE9EZT/PnJ/AEJwCEVHXFvqlJyTcIhAxara9Dboq17p95jFFWBVMBelnaoW1tNxcu3
         rn9ZbjdFCmQWzhD7azqy+hkOZMEVuVLaqLwMsoEz3gABroHdsQk91SIOwdvvbj4+cuOh
         /+Qw==
X-Gm-Message-State: AO0yUKV3k2eBbGMnC76NVcH4Le6q4/xO27/5ZkRNWGuKspKfoK/yn7M5
	v4bgWp6VuQ+D5k05ZNna9W8pAk3iiuGo96YQJiA=
X-Google-Smtp-Source: AKy350a3EWUrRSUxSd+nYlPvz6tPhVXnifdNGes45vnfMn/N81tA6gDMRErVIZRtnQYV0TeUe9HDjA==
X-Received: by 2002:ac8:58c6:0:b0:3e3:803b:e5c9 with SMTP id u6-20020ac858c6000000b003e3803be5c9mr6667231qta.0.1679672110292;
        Fri, 24 Mar 2023 08:35:10 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id v127-20020a379385000000b007456c75edbbsm14331836qkd.129.2023.03.24.08.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 08:35:09 -0700 (PDT)
Date: Fri, 24 Mar 2023 11:35:08 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: keys@linux.kernel.org
Subject: Re: key for u.kleine-koenig@pengutronix.de
Message-ID: <hcfu4f737lrc4hdq42axtb2bscf3zmpesvxo5ynpd2ilcrgsvd@b7oozol5zugk>
References: <20220610095457.cs7uwg6vp3xwc4hb@pengutronix.de>
 <20220610171325.7iwojo4p5xw4iwbg@meerkat.local>
 <20230313180127.nz2rwcces2q3gds5@pengutronix.de>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230313180127.nz2rwcces2q3gds5@pengutronix.de>

On Mon, Mar 13, 2023 at 07:01:27PM +0100, Uwe Kleine-König wrote:
> 	.keyring/openpgp/kleine-knig.de/uwe/default
> 
> I don't know how this .keyring directory is used but I wonder about
> the "kleine-knig.de" part. The (nearly) matching uid for that is
> 
> 	Uwe Kleine-König <uwe@kleine-könig.de>
> 
> . In transit this is usually encoded using puny-code which would make
> that
> 
> 	uwe@xn--kleine-knig-yfb.de
> 
> . So I wouldn't have been surprised if there was a file named
> 
> 	.keyring/openpgp/kleine-könig.de/uwe/default
> 
> or
> 
> 	.keyring/openpgp/xn--kleine-knig-yfb.de/uwe/default
> 
> but the filename above looks wrong.

You're right, it's a bug in the code that tries to be extra-safe when creating
dirnames. The .keyring contents can be used with b4, but not very many people
do, so the impact of this is tiny to minimal and benign (your key simply won't
be properly found).

Thank you for the report -- I'll try to fix the bug next time I'm poking at
the pgpkeys generation code.

-K
