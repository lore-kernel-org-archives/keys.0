Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AEB5CA0
	for <keys@linux.kernel.org>; Tue,  1 Mar 2022 15:02:50 +0000 (UTC)
Received: by mail-qk1-f174.google.com with SMTP id bm39so13145453qkb.0
        for <keys@linux.kernel.org>; Tue, 01 Mar 2022 07:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=e9IrCFBs3ECqQxyIPhxLMljzGbFZrdsG0dkcv0DxwnE=;
        b=ZP/vTD5+guJKuXJ/pBju7USOuiATRqEjfiOuoweSAFr/95VB+9K+dpfcMCLJsMX7d1
         LFS8pDCjr0Fwc+cue7iyRAusMWMNqy/YS5ggn5/+eJWokxy38etI/D2Rzcx5WBQ4Dzae
         HVecLjz9ramCzemLUaXt0kPQF6DaexBOmQcX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=e9IrCFBs3ECqQxyIPhxLMljzGbFZrdsG0dkcv0DxwnE=;
        b=bebnvJNLyfS9VbBDgM/C78aQ4jis8jluhGwoRb0Zyl48shmV07G6kcr2pGRD+tE90c
         9q+AN2lcRqFVM2gEIxDhZQl3IvQcjusqPabr5dG4WVupxL7zoX7QFbl5cTZbxXXMsBD0
         mbgSo28iLjXnyaRITjWcUBTdRc9IZStHKToNRIArVVZGBFYzqW/UMKTQP2UPHWIi05f2
         aRaF8X+TiuSZjNyQCXggJWsuu5rqoARZDEuMTdnwDo2fJgoBcVwKkl7LwQIwI7r0AZYN
         DvZvYh2AlpUfcbFHBBeYrnPjuZdQuqGJo3XQIXmjUKS/kVJQSNZt5T1xO/fTkEk9TAxJ
         ByQw==
X-Gm-Message-State: AOAM531iyjHOsTvr4pUtGxKOt2g1e/VMC1D/PIGjs9PGGvnbP5E2yug3
	TiKRLkLArXpLlPYQTfj48HzLmOjvGDCunw==
X-Google-Smtp-Source: ABdhPJydBrJ7qvfGEP5Z72cUQJy1hoP5R3+rHOFjfKQOSt5k1yWHq5HbC1Y9N+TcC97txwvF7OxDSA==
X-Received: by 2002:ae9:e40a:0:b0:612:4e35:4c86 with SMTP id q10-20020ae9e40a000000b006124e354c86mr13940867qkc.540.1646146969045;
        Tue, 01 Mar 2022 07:02:49 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id n8-20020ac85a08000000b002de658d6748sm9516377qta.55.2022.03.01.07.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 07:02:48 -0800 (PST)
Date: Tue, 1 Mar 2022 10:02:46 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Joseph Salisbury <joseph.salisbury@canonical.com>
Cc: keys@linux.kernel.org
Subject: Re: joseph.salisbury@canonical.com
Message-ID: <20220301150246.wseghjaaenync4kl@meerkat.local>
References: <8c4459a3-9dac-0c35-a4a6-0cc219081b05@canonical.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8c4459a3-9dac-0c35-a4a6-0cc219081b05@canonical.com>

On Mon, Feb 28, 2022 at 08:41:49PM -0500, Joseph Salisbury wrote:

Added 6CEF3D27CA5B141E, thanks.

-K
