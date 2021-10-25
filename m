Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2732CA4
	for <keys@linux.kernel.org>; Mon, 25 Oct 2021 15:31:43 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id d15so12018834qkj.10
        for <keys@linux.kernel.org>; Mon, 25 Oct 2021 08:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=AYaWi2HzZoo3CY/chF9xY6oE6sSA9gKmFzHcPPzE6YI=;
        b=hyplfc3984dQ3Exa9mP10/eMPqMmZAUSW5SeHXUk4ufayS6/ihxHW1A0Z5bIRFz50B
         TUhLfBe1+EUb3UsXc7QEO2MIh6I7jssGOC3+1gQA+dQPG58kFggp86HobXimjwkHGRg6
         URikGEcW4exVnsfPgXRoEMtKH38ib91WMMYn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AYaWi2HzZoo3CY/chF9xY6oE6sSA9gKmFzHcPPzE6YI=;
        b=lkKgsTnw0cvXKn5ECnSmoKiDRZoY5DfLrcmRBut0mArNeHBAcY0XRDM7dfHBE/v5yP
         XXO/GNY7HFnQheS6kpyrqlZlsttD/RgxkHxGt2RA1DOn4o8U2AS1YXK+hO3Lz0/fGmeX
         npBqAFfpiXBscAJPRsC5yR8ARaVqJYB/SAOoRbWv9tdr+/3Fp+U7cRdPkoQD6vX27kYz
         qCLPuMWrVshzqmzMWdbRQnTyroQVjJsgWrwkYTVS8lziCQyBewzFnl8+4iHWiCSQdr7W
         BoNScjt47Rq9KvmT87BLsWSvghCsfuBUkQp1pqD9MgO2YEBs5T+VVnZo/G91cRE378KW
         w+uw==
X-Gm-Message-State: AOAM531ZtVIqKvE7Hbq3L324rGaKZJav4H7aY5g7uqQv87yc82THvAEu
	VkpG196n2hVq2dDgre/IrmKaZQ==
X-Google-Smtp-Source: ABdhPJw2HIGbIBkDm5O3gT63jVOT2ZSrZaU8TD6Zb24J0E8zj9gBLqZRX7uQ5AMmV3eNNjx57aM0VA==
X-Received: by 2002:a05:620a:1a10:: with SMTP id bk16mr14033569qkb.370.1635175902046;
        Mon, 25 Oct 2021 08:31:42 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id o190sm8692344qka.16.2021.10.25.08.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 08:31:41 -0700 (PDT)
Date: Mon, 25 Oct 2021 11:31:40 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: keys@linux.kernel.org, Borislav Petkov <bp@alien8.de>
Subject: Re: Expired key extension update
Message-ID: <20211025153140.o7gtwqqaemga3hi5@meerkat.local>
References: <ec68820f-d7e8-4499-63e7-a4cc5976f808@linaro.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ec68820f-d7e8-4499-63e7-a4cc5976f808@linaro.org>

On Sat, Oct 23, 2021 at 04:26:13PM +0200, Daniel Lezcano wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
