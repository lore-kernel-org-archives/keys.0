Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0010933DA
	for <keys@linux.kernel.org>; Tue, 13 Sep 2022 13:54:51 +0000 (UTC)
Received: by mail-qt1-f174.google.com with SMTP id y2so8657180qtv.5
        for <keys@linux.kernel.org>; Tue, 13 Sep 2022 06:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=0zpFnMDaNYPUUW8/NKFTzOnpSzu0MIxGUYo3jQPJqqw=;
        b=TfLPGJ/byzlw9ZBv6D7sz5ZvYRi3D8I4XwTWc10B+aZ/kpIzk8V7yC3yh9ki14IWOt
         Ld90UP3JX9v1s/hy9lrP6IMnNxE0nTc4Q+A3jMSuSNd4GyCcv/6RP90+w+hscobZNBFu
         2HvEHVmBAqQxvllmxVfMT/iHYcc1TeJSACmTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=0zpFnMDaNYPUUW8/NKFTzOnpSzu0MIxGUYo3jQPJqqw=;
        b=5+2tJzE2f909w+A5OnFrwZUaHJFCX4Bl52GLbrM0kg2HaNW9Zr90DYvd3fa7ZKSxKd
         lTHvuWoCD+PCXn8SMSVJ0jjsBlreWr/72gBrmA+ecCzmcOuAVphM8Enbnl8nWdS65seo
         lzL8f7u40L1dA+YXcaMh2rgl6ivDJ3AyYWOFST+6BGNYTfSH/pyUId7slitthy7EJdCR
         So7yuz1PmwkWpGAuowhDDSoWM8drmImzi8fLIV1B4AWxRyKZ9BJd1yX5ssfv5qfcU1jg
         kGc6orTK6ekdM5q94tMvh23ngXLz3qt2F2woaYbZfu6Cu66oisFNcg7w5wwA1odriIEb
         CzxA==
X-Gm-Message-State: ACgBeo2/pTEVEz684EXBG4o6CZpEBXBvZz05sWwFJdAkKOnA6TKfP26o
	rkhA+4H4PoCrPI0BMAfzKdC7U7s11pE6mA==
X-Google-Smtp-Source: AA6agR5XSgEZcshRrDK2oZ4M8fcM0QCn4/wqGDXT/EqPVSGbMpK3k70kJwLLZgjBs6UOyXEyS14DuA==
X-Received: by 2002:a05:622a:255:b0:35b:b8c2:40a7 with SMTP id c21-20020a05622a025500b0035bb8c240a7mr6479328qtx.558.1663077290870;
        Tue, 13 Sep 2022 06:54:50 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id l3-20020a37f903000000b006af0ce13499sm9622350qkj.115.2022.09.13.06.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 06:54:50 -0700 (PDT)
Date: Tue, 13 Sep 2022 09:54:49 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Philipp Zabel <pza@pengutronix.de>
Cc: keys@linux.kernel.org
Subject: Re: p.zabel@pengutronix.de
Message-ID: <20220913135449.5hz3n2av3t5xmvkg@meerkat.local>
References: <E1oY159-000Jf0-HL@lupine>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <E1oY159-000Jf0-HL@lupine>

On Tue, Sep 13, 2022 at 10:15:47AM +0200, Philipp Zabel wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
