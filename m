Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7ED256C
	for <keys@linux.kernel.org>; Mon, 22 Aug 2022 15:01:57 +0000 (UTC)
Received: by mail-qk1-f180.google.com with SMTP id g16so8017294qkl.11
        for <keys@linux.kernel.org>; Mon, 22 Aug 2022 08:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=ybnha/9tdNFQOUddDgrShCcBQe2QKz75q10K1Qf7Bpo=;
        b=VzpqnrZQXc9sJg9XT4gMYqjP0Jyeeavx3MjHrzs3QL2x5r2S/hZCCNknVscc26LBPn
         nl1ybFlwcI7FJeHtB/hzXQpkKHaeW/G/OVVR62im4OotQE8uTrnT+Gn8QyGB2Sjvf+1u
         5MwOy2/+7kJbMGPaGMog7Mc2StSfF8jCqCGIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=ybnha/9tdNFQOUddDgrShCcBQe2QKz75q10K1Qf7Bpo=;
        b=eM2tv8d9hafeenODn6MRIIgFX8bYCoHkevJ8tgI0diW50EscdgAunYOJXxFLvkx4WF
         xA2wF9S6YIHiuJk7umcSCD2VINmmhGGQYMM1IN//kc6ul2dLV59A7UkqW7l9QM5psWEz
         8hX6fScDaVlZoVENSLdriO5BTcYK1GP9v/5WVwiMURNiSQTrL6dIYDYfaOaq5ng2p0vg
         9VIUvAVR9PEGKInCukJp0TINg8WdT/Acdii1WryeOI5iIR65jdtW9R35zdjlDeuUjcDM
         hUMLKNE/G8yXeYjsZqsFOn83K/3jJHWA7ylbwzfME690D4deOUjIwU+Ybhmu1hnr1/Tc
         sexg==
X-Gm-Message-State: ACgBeo1y4t/TuLFpdWZX5VnXJCEfUtLEe2iKsefnqoTJGs4vRZ7jL6Xf
	P6fepHe35eoDiiWckow6bkBICBIoRSfskA==
X-Google-Smtp-Source: AA6agR7R94XdI+ObyjpM/Q9njuQy9RAoPH+6LaIjNdvvEDuksafDQ4A/wlvXNnP0BsuRZ2WZhMTvWQ==
X-Received: by 2002:a05:620a:4588:b0:6bb:50d4:7f7d with SMTP id bp8-20020a05620a458800b006bb50d47f7dmr12385408qkb.244.1661180516535;
        Mon, 22 Aug 2022 08:01:56 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id d134-20020ae9ef8c000000b006b942f4ffe3sm10568154qkg.18.2022.08.22.08.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 08:01:56 -0700 (PDT)
Date: Mon, 22 Aug 2022 11:01:54 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key expiration for Mathieu Desnoyers
Message-ID: <20220822150154.7kshro3ngv7rmahl@meerkat.local>
References: <1056758575.20546.1661179008326.JavaMail.zimbra@efficios.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1056758575.20546.1661179008326.JavaMail.zimbra@efficios.com>

On Mon, Aug 22, 2022 at 10:36:48AM -0400, Mathieu Desnoyers wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
