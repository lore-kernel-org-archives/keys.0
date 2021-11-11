Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE34668
	for <keys@linux.kernel.org>; Thu, 11 Nov 2021 19:56:28 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id 193so6896087qkh.10
        for <keys@linux.kernel.org>; Thu, 11 Nov 2021 11:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6oev2m10NQlLpIm0TOukn0wxt8zdm54e1BWGgXY1nOE=;
        b=FNTEX4yofkCXWSfW3wSESe57EDe5lFRa5T57ezMPwFRm8naApk0L3p0MCI0oh/rjJh
         p4zmnbw8+N24qKtyYVdn0rlg9aHxbWG/7tnfRmkThVpxfCAQjPGYOB8X9mEI0vLaGbr4
         +kAhO3H1cyiiPbUzs8RKcHIuETEBl2ey1YZDY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6oev2m10NQlLpIm0TOukn0wxt8zdm54e1BWGgXY1nOE=;
        b=fll+HJ4frXpA4p2AF1V1r1r+wgaOwpOvTMkMp08+qZQCshPe3I6/vM8KU5/W/7iUjL
         i362NQHSlJE3RYqMwjGauuJYwzpKM+d5u1bKN89XLDuFfArjNYsI9HB2oZ2++8K+8ewI
         J51hpQ70nHSJQO3ZWIwbuhbAVvWAD+S0KzYWH7zqXHl/aWGcndw+BuCAfBVpywFi0Yiq
         /eDOBjK2ARlS0GgfGwEl08PgKMWis/R0H0rHI3TcMxBj1kMTFXMPpooJtSpMog6N2Iaz
         A+Sqy6+jeGslr8Lo7janV2VFz7mBqq7WBW/B5XXvK5mapBTS/qEeA0+mroOjbjJUmD9Y
         9sLQ==
X-Gm-Message-State: AOAM53319Jf4BkrEPM+F3oMDkdX3GbVumou0lDsiO/vpaZMlfr/kH3ko
	0SgU4kZ5ZG9teE7y0Pcwv0jZ4S6S4cb5fQ==
X-Google-Smtp-Source: ABdhPJx8XLIW5uiXLNfJxxhrgw54DFdW4J9MU4qteWT5sPafKwVRLNJoay6WoeHDkpCTtsLd9mbsdQ==
X-Received: by 2002:a37:ccc:: with SMTP id 195mr8030254qkm.371.1636660587626;
        Thu, 11 Nov 2021 11:56:27 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id bm25sm1847820qkb.4.2021.11.11.11.56.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Nov 2021 11:56:27 -0800 (PST)
Date: Thu, 11 Nov 2021 14:56:25 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: keys@linux.kernel.org
Subject: Re: I've moved from Google to Rivos
Message-ID: <20211111195625.wc7dp7ws55otmtac@meerkat.local>
References: <mhng-a84f1f40-53c5-4fce-a52c-46c02cb5c3e4@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <mhng-a84f1f40-53c5-4fce-a52c-46c02cb5c3e4@palmer-ri-x1c9>

On Thu, Nov 11, 2021 at 09:12:28AM -0800, Palmer Dabbelt wrote:
> I'm always a bit leery about messing around with PGP keys, but I think I've
> managed to get this right -- essentially I'm trying to revoke my Google UID
> (as I no longer work there) while adding a new UID with my Rivos address (as
> I now work here).  I've just pasted in the output of "gpg -a --export
> palmer@dabbelt.com", which is as close as I can get to the suggestion in the
> README.

Yep, everything looks good. Key updated.

-K
