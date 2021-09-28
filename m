Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3BF33FC8
	for <keys@linux.kernel.org>; Tue, 28 Sep 2021 17:17:58 +0000 (UTC)
Received: by mail-qt1-f179.google.com with SMTP id x9so20667359qtv.0
        for <keys@linux.kernel.org>; Tue, 28 Sep 2021 10:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=BxjCzzaS+ADNBixRH3ys3EM+TGmHPo4VlyhKVnSBhdU=;
        b=QMInviQhLCeffd11ACqVpmyctvCNtv2d5/jp56JQWe4RnvK3yKwqeYpwws7mh3erC1
         zrSZvw3NLNFgmZi1sUoV8Pdpuzt9KaTITaR9Afg7cFi9Zf3BoX5irbPasR4X4Ul7exiL
         AycxA8JZmANYW+tRHqaE39tqPNtvWl9e+2BCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BxjCzzaS+ADNBixRH3ys3EM+TGmHPo4VlyhKVnSBhdU=;
        b=EwmDbp9f0KkbyJlQHZkLfJ8W3yQ/ZLr4RSqH4yL3AGkuvmZ/wmtPC6DWM9xJvULK0W
         DGttjtWK4OP+OlG6XDH/evL83vcyk15RIqg3DwpFi9w7TaPHz9fcdtYH+2YM1Eu8rqAK
         0PkmFzwnuXO4lA/dr5lL7NqI9qHnz2xYhkeIpeR7DvtSKzc0bg5SaecDIEe9rPAYW5K3
         /Pis7nXAK6DzCagR/cUZKlqKYDRPoPt51XfY7t/YAxsz00BD9F/4OEoxlpH/52pJW5Lr
         UiJYkOy8DgIN9E7zgrqQWhHqT3Vy02vptD1BL4NIVUDHJxxodLiIuRJXdXRXbf67IAzD
         O0ew==
X-Gm-Message-State: AOAM533yVYPVeCNp7edn1y6EWxLtFcSEqroTqH9akZt2NVj8xGmfyVWe
	6W7AJyWyoug8ZHef++2ECrk8yZbH7ewTdA==
X-Google-Smtp-Source: ABdhPJz/8G2dc584HzS8jvc+DktvLhE71GcugexCBEWtb6EKcU33JoOzlIuRxUIz/kX5nIfnPx9+2g==
X-Received: by 2002:ac8:4888:: with SMTP id i8mr6868785qtq.174.1632849477664;
        Tue, 28 Sep 2021 10:17:57 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id 19sm2786369qtt.20.2021.09.28.10.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 10:17:57 -0700 (PDT)
Date: Tue, 28 Sep 2021 13:17:55 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Xu Yilun <yilun.xu@intel.com>
Cc: keys@linux.kernel.org
Subject: Re: yilun.xu@intel.com
Message-ID: <20210928171755.jmj7zoaeh5fi7eva@meerkat.local>
References: <20210928032302.GA10681@yilunxu-OptiPlex-7050>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210928032302.GA10681@yilunxu-OptiPlex-7050>

On Tue, Sep 28, 2021 at 11:23:02AM +0800, Xu Yilun wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Hello:

Sorry, but there appear to be no signatures on your key. To qualify for
inclusion into pgpkeys repository, your key should be signed by at least two
other people who are already in that keyring (so we can trace paths to Linus
Torvalds).

-K
