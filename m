Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78880257C
	for <keys@linux.kernel.org>; Thu, 29 Jun 2023 14:47:53 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-39e9d1bf835so503923b6e.2
        for <keys@linux.kernel.org>; Thu, 29 Jun 2023 07:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1688050072; x=1690642072;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i1E2FWjkaXlsmQX3yVLnhYzIHUWFHmOfmevVsR7kUe8=;
        b=KCtQmg7fH+yszp+o+tSXuK50jF+BNwcmVYhYqSRfY706JeojgNXHbzMDnD79YthdTu
         Py8kouJ2sMO5+rbt4ItUWbeSXVe6PiVf1gy6qLro22q/rY/d2vkeBEpIkm+9cxpsvTPP
         u2GgiInVvFvKGjoWQK/Oc2OdbuGZAVKd5NrSg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688050072; x=1690642072;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1E2FWjkaXlsmQX3yVLnhYzIHUWFHmOfmevVsR7kUe8=;
        b=VeuQeE524HbEqZuL73t/tkiCxOj5Jle/8ZWHkVLV/ngphpcg9GVyEkxLNI4sIRqyOu
         izytMkO/xYuJUp3JGzhX/OZwaWET6E+Id2FEOhs1W5t23uobbGY+rVHglhcIKdrWX3zJ
         pREOVW1fb/THc6LbvrBvgNEffu9SkssoIPiFoIgADC0pymalf31l7d2Zp0YXnBoCzZRf
         vnkJfi/4ejWX2XJT1w3vnQoaSqh48yxMafMrP0qdznmgsAvpObEngV1EvKFVLt4MDcqk
         JDCbGBQxL2463qKit0A7ObQFEv/trE99CG9opJm/csR+FTx3WbQhBNZ3A/Urf3Z1vhdj
         qz6w==
X-Gm-Message-State: AC+VfDz3mD8xdI1Au8HY3xUB9Qv7M5pWiw8ZNtKxWlnhkksxLLn5y6dz
	fHy91I6z4YFfVmL76A1ut7XqCA==
X-Google-Smtp-Source: ACHHUZ7JRc3JAKirqd6cpgFJOE0ZKkRuSV0kat2YtNNj+bcmJxkd0rMwFHNVeiUsAhdSRrE4enz2CA==
X-Received: by 2002:a05:6808:2396:b0:3a3:680c:5beb with SMTP id bp22-20020a056808239600b003a3680c5bebmr5448063oib.17.1688050072356;
        Thu, 29 Jun 2023 07:47:52 -0700 (PDT)
Received: from nitro.local (bras-base-mtrlpq5031w-grc-30-209-226-106-132.dsl.bell.ca. [209.226.106.132])
        by smtp.gmail.com with ESMTPSA id h18-20020a05620a10b200b00763a3e5f80dsm4641175qkk.15.2023.06.29.07.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 07:47:51 -0700 (PDT)
Date: Thu, 29 Jun 2023 10:47:50 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Theodore Ts'o <tytso@mit.edu>
Cc: keys@linux.kernel.org
Subject: Re: Updated expirty for tytso@mit.edu
Message-ID: <20230629-hunts-bunyan-well-eef4ee@meerkat>
References: <20230629142424.GA574013@mit.edu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230629142424.GA574013@mit.edu>

On Thu, Jun 29, 2023 at 10:24:24AM -0400, Theodore Ts'o wrote:
> My updated key...

Updated, thanks.

-K

