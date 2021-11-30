Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE132C80
	for <keys@linux.kernel.org>; Tue, 30 Nov 2021 17:32:50 +0000 (UTC)
Received: by mail-qv1-f50.google.com with SMTP id u16so18706285qvk.4
        for <keys@linux.kernel.org>; Tue, 30 Nov 2021 09:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=p3Y6mOPMZ63mwduPaA0UAptgc54MoRTJnUow1h33iq8=;
        b=fhU0quPS3EkrvMe/o2i9PvFTt+Vw7lV/CG3l18kSTi5Fch8ZURj79y6jxdjmk+Mxvu
         HsUyhRYswEjsqQVYwwS/NOQcsRGL0A+AkkExrHpFAooSKStt7QqN3iju7yGJvZAwhwyD
         f66srrsGuAV8f3fA+sYgqR5xfvV6htJ4SjMb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=p3Y6mOPMZ63mwduPaA0UAptgc54MoRTJnUow1h33iq8=;
        b=HPsXHgFbeRXJRHUC0Kf0Hr1NR0nqDxFw8nsdn+G+7MvD1jiAXrPdckzVZMGHMT6DWw
         OalkHXSkUcLVaITG3tj/XxfXkzDSdDGCyJ2g1hKZv4VndA9OSuIDZwO+HQYQAFC7290z
         d0fQ6E7Kzn1v4XUQjqPAu5hWL2JX7clvcHnrLUiIEY9PO7OtPCZuxDe0xsMXWndImhNO
         E60vSTwnzwX+R3FKUXIXZfEZrHf1d7i8E1ePJ2Ar+bdxuw0RjHYTsKC2GVk4Rp606a5l
         LsG2g2xyjuSvaqXNnGUyQcUc8nJdG5ayzV563cUZbiBRTNm2fihiEJTX1wdcvuROyZDZ
         rHYw==
X-Gm-Message-State: AOAM532mMpa+yp/lEy1IUkjDRgaiRHDuGzQRKA0u3X70VBSvWFMFg5lP
	tGU3h2re0V1PcgHeFhjMfp/dQrzmg2UkVQ==
X-Google-Smtp-Source: ABdhPJz10VzFMCCFLi8qM07EOkGc3uPZCzZjNd64rbDnwnL2xngqKMdp2wxp60LfHfX5MHk+G9tTTQ==
X-Received: by 2002:ad4:5bc4:: with SMTP id t4mr209966qvt.3.1638293569266;
        Tue, 30 Nov 2021 09:32:49 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id n20sm10837569qkp.65.2021.11.30.09.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 09:32:48 -0800 (PST)
Date: Tue, 30 Nov 2021 12:32:47 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: keys@linux.kernel.org
Subject: Re: Extend expiry date.
Message-ID: <20211130173247.ru6nflerx5zyjlvo@meerkat.local>
References: <20211130161141.q2hhuejq2rt2b7wr@linutronix.de>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211130161141.q2hhuejq2rt2b7wr@linutronix.de>

On Tue, Nov 30, 2021 at 05:11:41PM +0100, Sebastian Andrzej Siewior wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
