Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A312C9E
	for <keys@linux.kernel.org>; Thu, 23 Feb 2023 16:19:28 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id ay9so11189825qtb.9
        for <keys@linux.kernel.org>; Thu, 23 Feb 2023 08:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gHLnI+xiOoJ4GAO4UWMlCuY92/ARY4penI9PZsk8Z6c=;
        b=Xsyge8FiodLxWjQH+eXx+G3E8jMWx+ZMg8t3e40WOyAx5T2T+AML7UiCr4VzvINuvA
         L48YasJgryEObYFjQCs6/qyAUiRVmZbIqgSdmJoeH0bP9RzNl+6Rk9tGqphWX7uCJCb1
         +ZH1ZtD0B2QPzLV+7gEQdB50Sh4AvEChCWjsg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gHLnI+xiOoJ4GAO4UWMlCuY92/ARY4penI9PZsk8Z6c=;
        b=obnmgA75/du/VWxZ1p4SFMnM/yWs7vN0LBgNxX2rlakkUp0CZ4aq3armQXTsc54UZt
         JlSdiH20rgeftEx+O0+h/SZQAXNm8TZFQf7EudubSAYCciYrNG0q+FgC5rni4uzLsiCF
         uVBFKGtHSFDX0xQaAJhJw0Aj0lX61RS8+GbTLXC1cM+94R4g6tQGSgBnaR/e4JAqT3CR
         F4OvzRGVsUPib6JJVBIZQejes/CeGiuEdoKQlYhW+5zjAqx06hwQZJb82wqw0ikGtXsP
         cNARHhhQxpwEcOzQhDw2gKMLDuCmvxrO9Ce5XxxmNahPbrCUMCAYOByzP6pm1y4IibW3
         oqTg==
X-Gm-Message-State: AO0yUKXQ09XKm43swV2wyiR9m4gCQESGoMcW8t9LzqwzkOKZ0o9i1ePz
	R91zBEm8wZR5ZZnIQd4qhwkUHlCDv2TZGoE3
X-Google-Smtp-Source: AK7set97GdKESW4RM3WcBKImKaAH5av3ia3zjSNZwE1Cp+buzwR5IU/ykgtZ+YygUXy+RugVNbZH8A==
X-Received: by 2002:a05:622a:1046:b0:3bf:a501:678f with SMTP id f6-20020a05622a104600b003bfa501678fmr17066676qte.27.1677169167365;
        Thu, 23 Feb 2023 08:19:27 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id g189-20020a37b6c6000000b00739f84a6c23sm4045486qkf.113.2023.02.23.08.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 08:19:27 -0800 (PST)
Date: Thu, 23 Feb 2023 11:19:25 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: David Gibson <david@gibson.dropbear.id.au>
Cc: keys@linux.kernel.org
Subject: Re: New key
Message-ID: <20230223161925.pzxxkqsbmxjvumct@meerkat.local>
References: <Y+TQqjEzhv0P1vwB@yekko>
 <20230209204114.ynajycsawbmjugxj@meerkat.local>
 <Y+mh9AALS6uCC/0A@yekko>
 <20230221222821.puatf6y3f4dnlz7h@meerkat.local>
 <Y/WPOQJ9/JbkaJT4@yekko>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Y/WPOQJ9/JbkaJT4@yekko>

On Wed, Feb 22, 2023 at 02:42:49PM +1100, David Gibson wrote:
> > Please resend the key (as a follow-up to this message is fine). Keyservers are
> > not reliable these days, unfortunately.
> 
> Ok, included below.

I have added your new key to the pgpkeys.git.

Best regards,
-K
