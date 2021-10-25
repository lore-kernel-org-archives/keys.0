Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0262A2C8B
	for <keys@linux.kernel.org>; Mon, 25 Oct 2021 20:41:37 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id gh1so8047545qvb.8
        for <keys@linux.kernel.org>; Mon, 25 Oct 2021 13:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sgk7F/F+nn12bL5OPYn0DOl2aEdjfoXvpIqP/cdCdV0=;
        b=G+bmZBr7kIIMaMnSyIh9JJ2QHw7DisPi8MYrVAyvCanQQ355HZBaT4AG3EqAmkdRYa
         E/EleYDf+BozIYzIVzjNFXGonJPHXJknKTDrT5c8eJKvdow+GdkpnQVypK2dpjVUupQD
         o5SeRmFgmrWhhEEr72/jfFXXSO9jNMszah6fM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sgk7F/F+nn12bL5OPYn0DOl2aEdjfoXvpIqP/cdCdV0=;
        b=McLwamH32gWTYuv94XWWdkSk1VwTQv/7RnsK0fxpdB+P7gCkcJaUZhu28HHNdgA7Yt
         8jqhKT9YFC8Hpk04WZQQRdc3NKfYjRCrlT5Ru17lRT6eDlr6eAazRbx5P3W5yZOZSyJT
         thgUAPKWvsnQ0bxA6SCHTv6GPXsZbUQ1UCZgrdfZm/g0JYQHxFBS3MDd5LUHEXz45RfS
         B7C57viE8Ba5ffCr8S7z/hweohkFar9DCcmvZyXb02DfjoB0OnSIMZpfwg7od1eXd4WM
         wZAVtc7J2SKozIVIqj5FY+fr/1f2dl2I0q0hKZT2Ed/OZjKujVP0jDv05ptJyZUopvqH
         DyqQ==
X-Gm-Message-State: AOAM531c5Eq04QDQSSTU2+XA1C6b+M0tK5/D6R18Fo01iySCoXvdwv6t
	gc3XF41CuDofBGBu64rnJ0DpTmsUTQz02g==
X-Google-Smtp-Source: ABdhPJw6o+c/mruGSwdyJRtYKtx8iXE/v6pbueNSPKHspmBrphlN13qpA7bSSDl+blPm1VPP5w6uyA==
X-Received: by 2002:a0c:fa08:: with SMTP id q8mr18294805qvn.19.1635194496876;
        Mon, 25 Oct 2021 13:41:36 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id r16sm8890478qtt.22.2021.10.25.13.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 13:41:36 -0700 (PDT)
Date: Mon, 25 Oct 2021 16:41:35 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Lukasz Majewski <lukma@denx.de>
Cc: keys@linux.kernel.org
Subject: Re: [gpg] Public key for Lukasz Majewski (with 2 signs)
Message-ID: <20211025204135.dz7exmd2nn4gshbt@meerkat.local>
References: <20211023163459.1477792d@ktm>
 <20211025153710.oigp5xhsjio3dl6d@meerkat.local>
 <20211025202226.0e893e32@ktm>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211025202226.0e893e32@ktm>

On Mon, Oct 25, 2021 at 08:22:26PM +0200, Lukasz Majewski wrote:
> > I see a signature on your key from Krzysztof Kozlowski, but that's
> > the only one. Do you have additional signatures on your key that
> > should be present?
> 
> This key has also been signed by Sylwester Nawrocki (4d5b20a7809c7a8b):
> https://keyserver.ubuntu.com/pks/lookup?search=lukma%40denx.de&fingerprint=on&op=index
> 
> I thought that it would be enough to have this key visible on the
> keyserver.
> 
> Shall I do something more?

I was able to grab the missing signature from keyserver.ubuntu.com. Thanks!

Your key is now included in the keyring.

-K
