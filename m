Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07D32CA4
	for <keys@linux.kernel.org>; Mon, 25 Oct 2021 15:37:13 +0000 (UTC)
Received: by mail-qt1-f175.google.com with SMTP id n2so10662297qta.2
        for <keys@linux.kernel.org>; Mon, 25 Oct 2021 08:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=mtmG43E8UfPzKKImRrAGMFXmZZ39Pd/KJtYBOuHbpWU=;
        b=JKFQ4m9679x1tNvETvZvl/xSE88hcW7byQvqOXvaBRXmhLthLtMd2+dQZV0upucDl4
         h66BQ9Vye1YiJJuzVMiCSV17IbE1YtSMnwApgQRQkeaDLKyv4ZNsnIQz+rZQDnbttL8R
         ROWXN04T0EY5jiseK4iqAuUYnxszdRNGsHG3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=mtmG43E8UfPzKKImRrAGMFXmZZ39Pd/KJtYBOuHbpWU=;
        b=0mjLf6l954+qZleeCydhNVu9bhasILusD9NlH1mnxIjwwPR6R27Jl/9cfiKS/71H58
         B0cnsTWX+CqLalDWJgPe9v94dN2/A2iuroTFxEVz2aWb+y5LSsCmkmcoLRwzKLkWMJHS
         E0l5a3X/oZwjej2ewaSpSipdoCCuUlLw6KmTbGLChoE9eQHP1kyfJeFHrAXou+WeU94Q
         l+JPy2a9sn4UJ/8O9mKZqD2cewCsXxYMaCqGCvuSeVX9qmJ3H+dmurPyiUSOqe/xjRdK
         sJtyhLrInTeydl+YAcHBekr+xCoYfKHLSVxwyK37ahbR6jt6o93hqZ9kMommlsQdIBQt
         NylQ==
X-Gm-Message-State: AOAM531Ey+xWs6d3zXhsX96flu9YbnY88NF+Qwm8eC0X0eLEoWpD26Vt
	okntgXgW/Uaabl1RPAeITD0yCPl9y71f0g==
X-Google-Smtp-Source: ABdhPJxOgxR4/jhiszIlmW8psU+rU8quCD9giGnwX94k7hQmIsOiLPaC6rxqmow1oiYaTL41NNQqWw==
X-Received: by 2002:ac8:7f07:: with SMTP id f7mr18472047qtk.414.1635176232735;
        Mon, 25 Oct 2021 08:37:12 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id z6sm9343638qtj.90.2021.10.25.08.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 08:37:12 -0700 (PDT)
Date: Mon, 25 Oct 2021 11:37:10 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Lukasz Majewski <lukma@denx.de>
Cc: keys@linux.kernel.org
Subject: Re: [gpg] Public key for Lukasz Majewski (with 2 signs)
Message-ID: <20211025153710.oigp5xhsjio3dl6d@meerkat.local>
References: <20211023163459.1477792d@ktm>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211023163459.1477792d@ktm>

On Sat, Oct 23, 2021 at 04:34:59PM +0200, Lukasz Majewski wrote:
> Dear Community,
> 
> I would like to share the *.asc file for my gpg key.

Lukasz:

I see a signature on your key from Krzysztof Kozlowski, but that's the only
one. Do you have additional signatures on your key that should be present?

-K
