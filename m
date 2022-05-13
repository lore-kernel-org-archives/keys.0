Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A22EF173
	for <keys@linux.kernel.org>; Fri, 13 May 2022 12:45:07 +0000 (UTC)
Received: by mail-qt1-f178.google.com with SMTP id i20so6665905qti.11
        for <keys@linux.kernel.org>; Fri, 13 May 2022 05:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=gHsH4aVJhAzyeS7UQOVFuZ2vcSvXcPyzYGMirgpJ+ys=;
        b=EMe7vRD/O0Ufib6ndzCJvAVFa/NlcHyLs10v6WKVRNXqoYrFj+vVkeu+M/vEu5eyFY
         h2gLo9NMYlREJekUm/FK2TLu74tfKsAzOrEy3BVkB3/zWvXvKEIsQTQPJ845TtVxMRV/
         uz6f9bY8GlZTmAmbYlRQX09TH3HPZDsSl08UU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gHsH4aVJhAzyeS7UQOVFuZ2vcSvXcPyzYGMirgpJ+ys=;
        b=IOpGlpA5jlp0Lvfb2pV9vQc7NUXG6jm7pEHWw2I8Ls2TRcbFjtyRqLdpfZXWfz8dwo
         0S+iZb2lqK4VkXdiSEb8+t4HpvqmxRtSwO84IUOZzqR/XGHBlqosy5DKEBncqAU1yBrK
         82FbV44zHFBpk3DRJiP8tGq5acXVGK/pIpN/NZAb24Koc/TvkljsPDlahdsHH5nKCDt2
         FWmLHdS9rixs4DFzJoHer4aU0299FOv2mtXYOFTZiDG0MA0qbGxjolGJ6CE7vVtXXqYJ
         MHY10+1K+gnqFO8iBe99KhVFSZNumoSpyvT4OHeXqjv8wIDsxvd+Hf7GMnET7wJ/Doeg
         bhDQ==
X-Gm-Message-State: AOAM530WthRBFGGbtiHR/Qq1G20N29bR2YEcWMM7AqOw7CNEMjX2A0ux
	0Q10gUJPDOZWITgMZql/8lSlnsq2RrD3jg==
X-Google-Smtp-Source: ABdhPJxnQbGULTqFjjv1SdV43ijVaK8uvsAZ/8xqTOf/Yq9SmosMBWhXjaM6IGowBrN2tes2o3qFEA==
X-Received: by 2002:ac8:5c02:0:b0:2f3:d85a:ad04 with SMTP id i2-20020ac85c02000000b002f3d85aad04mr4261389qti.652.1652445906473;
        Fri, 13 May 2022 05:45:06 -0700 (PDT)
Received: from nitro.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id k67-20020a378846000000b006a00fabde68sm1328013qkd.10.2022.05.13.05.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 05:45:05 -0700 (PDT)
Date: Fri, 13 May 2022 08:45:03 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Kalle Valo <kvalo@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update Kalle Valo's key
Message-ID: <20220513124503.hfhl6mvaypsmlh5e@nitro.local>
References: <87ilq969la.fsf@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87ilq969la.fsf@kernel.org>

On Fri, May 13, 2022 at 12:54:57PM +0300, Kalle Valo wrote:
> Hi,
> 
> Please update my attached key to pgpkeys.git, I switched to use my
> kernel.org email so added that to the key.

Updated, thanks.

-K
