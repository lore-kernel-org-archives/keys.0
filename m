Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCEC8F57
	for <keys@linux.kernel.org>; Thu, 31 Aug 2023 20:31:17 +0000 (UTC)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-41206fd9717so7497621cf.3
        for <keys@linux.kernel.org>; Thu, 31 Aug 2023 13:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1693513876; x=1694118676; darn=linux.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yAETymeoOgUqiFgLWwz6CNqKb3ZtXPyJ/KP5gQqqgg4=;
        b=R2kV9xt6MovGgEgn2VtRx/AbqDnF0psNm2TPzvasXUDR5SWm1HLG2oT0e1QWFtadtx
         dnHMbVqQiNNtt/na2zm+VXcM/wfkHUjEFQBiD7KzpiDfsZwto7GAm4pcxOr2qgJqJdUc
         9QL3kX8eLmi+Lr2rgFq56R8JHYvXdTF9W8Wts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693513876; x=1694118676;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yAETymeoOgUqiFgLWwz6CNqKb3ZtXPyJ/KP5gQqqgg4=;
        b=Rk0VGnF+bmUjWIJ92viZH1vUNyi3ty2s0A66d/jcgAdPB48wG2u3R9oRHrZw1fSPjN
         HigiGDQ2hTX3svl7yOZF9RcP9MO1Nif0pYfjOTmEPKYNPxLcDK4DFnEw3nn+pzlzGfcC
         6GF4pW4UMrkaXnKnueljBM9c087RVXAPt87CAzo4mQyaVjVkA4CQ48Bey0QQ9ZzjCmGY
         SdHgUdN6nD3LN+mSoLffBOZZ9XmIlWFc0Ij2mHDG+i73p4W6zy44Bcn86zcnUnehmQBa
         sGknDeD8yMjkHgpHba4BfKBK8nHv6ZMORiqDuojIV1R5na+YFLzYpBxDTV3vQp5hA4vg
         2cQQ==
X-Gm-Message-State: AOJu0YxDVJB50cfcH7ew/te/PiKCj/Z3FSXas0SoREXy+mrWy6IHTfVx
	OEzfSeZuLMvHbxVeAJdoW8d+eORRQUJ+O4/mJbc=
X-Google-Smtp-Source: AGHT+IEQ22k065j1466CCi7Rpx0LZ9/wyBAq5KUCMN+kVjrsLqSAXomt4mOr4OT1lREYcXnog/7/Gw==
X-Received: by 2002:a05:622a:1c3:b0:412:27a1:88d9 with SMTP id t3-20020a05622a01c300b0041227a188d9mr690748qtw.26.1693513875995;
        Thu, 31 Aug 2023 13:31:15 -0700 (PDT)
Received: from nitro.local ([204.48.79.90])
        by smtp.gmail.com with ESMTPSA id y21-20020ac85255000000b004109928c607sm890226qtn.43.2023.08.31.13.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Aug 2023 13:31:15 -0700 (PDT)
Date: Thu, 31 Aug 2023 16:31:08 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <afa@pengutronix.de>, keys@linux.kernel.org
Subject: Re: a.fatoum@pengutronix.de
Message-ID: <20230831-liter-compact-aegis-b53ff6@meerkat>
References: <E1qQjev-004bn0-32@dude05.red.stw.pengutronix.de>
 <20230801-outspoken-uncut-13b63c@meerkat>
 <366e7960-6b2d-ec8f-9893-424f29619243@pengutronix.de>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <366e7960-6b2d-ec8f-9893-424f29619243@pengutronix.de>

On Mon, Aug 14, 2023 at 08:00:08PM +0200, Ahmad Fatoum wrote:
> > There's only one signature that we recognize on this key, from Uwe
> > Kleine-König, and it's already too far removed from Linus Torvalds to work for
> > web of trust purposes. If you get your key signed by someone else with a key
> > already in the keyring, it should help.
> 
> Thanks. Please find below the key with two more signatures that are
> less removed from Linus'.

Added to the keyring, thanks.

-K
