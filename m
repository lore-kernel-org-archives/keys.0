Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A68AD3FCF
	for <keys@linux.kernel.org>; Thu, 16 Sep 2021 12:34:02 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id c19so5291343qte.7
        for <keys@linux.kernel.org>; Thu, 16 Sep 2021 05:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Uzt9HN1gG1h98NBm8PIpvF4J56soxXYCFT0IjmVYNgI=;
        b=KAepjdqfnWDmfF6B1+4iU6BdXWekBykw8N+0TpHXmsmvwrfyq1Hc8vaPNHTBZpkpu+
         oPCLoh8WCjkI25oiPxBEYafHk0q9B84UTWHoGErwgC3rVrjqG6kqlxCOglrj17ezEv6h
         +KutaAOdiAfawsyZYXkoWbksLhHw/hFa4c+P8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Uzt9HN1gG1h98NBm8PIpvF4J56soxXYCFT0IjmVYNgI=;
        b=S83VLVx5+HRxvVUVfIXONz8Evq3u57yBErrYkpUeBxZ6iFfTWwwcMmqADYwWjqhYbI
         1+QtJRmyHtHGNMt885OYTGaXAlEtCVHC9kZ+QiMym56SrXiv8NBzFFYMk4gF1N4YloH/
         ZG+8IS5fXFtTe9G4h8zMWMu468hehrRuhQNDYTIptYv7b/3ZR76P8AFs62V7j0W9XZNO
         CT1Yf3Yk2wFlA7Hy7+2WlEYR7nVLyHawQKTHq4MrC5GKCKfqwhWU0Tcf9oV8p6wuW7Gw
         fJED/ZdqaWqIIxOtIFV0eaIfFm+Z8B8gHa/mra9gVSJ+mwh9OslzGENDoTqmUlSyzZ4f
         CpVw==
X-Gm-Message-State: AOAM533QXl3AtyOX1rL/J9s8uNlUDZi095EGJTlBBYfwsRsBbhVNA5Vv
	0kSv3O4PvTx3d6kf/QhhirCNWANPCPyNkA==
X-Google-Smtp-Source: ABdhPJyWHbk2+DeDDtBb5iYjZJeeRvC+eZ5fti71yd4T9yoj3LU9Na811Tsy9ePfNtM4T6Cb2TgW2Q==
X-Received: by 2002:a05:622a:1a8c:: with SMTP id s12mr4648347qtc.232.1631795641533;
        Thu, 16 Sep 2021 05:34:01 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id 69sm2439986qke.55.2021.09.16.05.34.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 05:34:01 -0700 (PDT)
Date: Thu, 16 Sep 2021 08:33:59 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: SeongJae Park <sj@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: sj@kernel.org
Message-ID: <20210916123359.l67a3ci5pfvq3l2y@meerkat.local>
References: <20210916103217.2162-1-sj@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210916103217.2162-1-sj@kernel.org>

On Thu, Sep 16, 2021 at 10:32:17AM +0000, SeongJae Park wrote:
> Submitting my key to the keyring.

Updated, thanks.

-K
