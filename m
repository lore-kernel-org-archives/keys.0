Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773067E
	for <keys@linux.kernel.org>; Mon,  7 Mar 2022 17:42:36 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id v3so13861363qta.11
        for <keys@linux.kernel.org>; Mon, 07 Mar 2022 09:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wCsGhin9Px0ZNIYn/9pdRrroca81RsGzY9RdM+1XxaQ=;
        b=VqpmNJAJB5vnG0WtCWRcDxrhZsQ7f8AOhiIzh5gD6ftXsBp/wLVVSnaScR+FC8RqDd
         d/PLlAgfVdT3izoUzd4Z0jF5KUY5skSSTaIdhqVSCcKQRaTId0nfrP3v9AoL8LCiSB73
         6oY47s+EPPlDkIf+P2Q3rLNTILyt15rACZrYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wCsGhin9Px0ZNIYn/9pdRrroca81RsGzY9RdM+1XxaQ=;
        b=dAt3ykVqYWIq4L+IJdKgdyvjzEJD8ei2as6i9MiGZTLkewGSkEGca0ixWIF2DxbQVT
         9yqlfOOk2tzuqr6HTkj9atKW2Bpou9FhETGzCHqzbKMrGGPF6JGPXkrj/qHVUbXrzNYy
         15EEqi8jAQZWJxrm2iw8OZ3NxnT8N1u7xv24arUb/FJdl42WfuXG6VIATXAWVMb/XwnI
         Jj36R+VG5JOBNMJly4yvI2zQcLsw5QJcUCjM9udV8yPaRS77FTDGMSLSzAl0Ub2N08IJ
         5fPSE9dxewHaoZIwGeTV691WWvYeEAqWuZvnzTQIWTj17Po2jREPQBO6p0DmYR5ru5/W
         oxWg==
X-Gm-Message-State: AOAM531Ve6uSv/PdEKoY3lURRFKdq5xiI6xBqwxakVw7OJ+K5zR0rl1Y
	WaNyF6URq3NG7ZPuWfQ9l5Mu0R/1j4N8EQ==
X-Google-Smtp-Source: ABdhPJx8A7G8TaholdN/qI8+RcpBtPLqKyhdNywfUxuulxUeEa1vBe2p0nKIASHZKU59WIrGx3/ZHg==
X-Received: by 2002:ac8:7f51:0:b0:2dd:3339:dfe5 with SMTP id g17-20020ac87f51000000b002dd3339dfe5mr10331138qtk.269.1646674955315;
        Mon, 07 Mar 2022 09:42:35 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id t18-20020ac85892000000b002de3a8bf768sm9427452qta.52.2022.03.07.09.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 09:42:34 -0800 (PST)
Date: Mon, 7 Mar 2022 12:42:32 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Helge Deller <deller@gmx.de>
Cc: keys@linux.kernel.org
Subject: Re: GPG public key Helge Deller
Message-ID: <20220307174232.d35s752pthqntwog@meerkat.local>
References: <YiUGPW2iI/uNUeep@ls3530>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YiUGPW2iI/uNUeep@ls3530>

On Sun, Mar 06, 2022 at 08:06:37PM +0100, Helge Deller wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Hmm... this adds a new key that we don't currently have on file for you:

    pub   rsa4096 2019-11-10 [SC]
          454482282CD910DBEF3D25F83E5F3D04A7A24603
    uid                      Helge Deller <deller@gmx.de>
    uid                      Helge Deller <deller@kernel.org>
    uid                      Helge Deller <deller@debian.org>
    sub   rsa4096 2019-11-10 [E]
          A66C1BA2340E4BC2471998239FA7FDAEED273BFD
    sub   ed25519 2019-11-10 [S]
          BCE9123E1AD29F07C049BBDEF712B510A23A0F5F

This is the one we have:

    pub   rsa2048 2012-12-17 [SC]
          F4CFF4C00BE43CFB5153A06887C9C151B51E3864
    uid                      Helge Deller <deller@gmx.de>
    uid                      Helge Deller <deller@kernel.org>
    sub   rsa2048 2012-12-17 [E]
          2952AE7E354B9C8515D844B3C8698BFB918CE487
    sub   rsa4096 2013-11-10 [S]
          969B8CEA9EC2C53635C35F77A183955F30A51241
    sub   ed25519 2018-06-12 [S]
          CF9C33A6CB5FD342876C8AC6202A4978DD4FAC5D

Is it your intention to use the newer key from now on?

-K
