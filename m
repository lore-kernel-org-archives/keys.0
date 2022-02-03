Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D422F23
	for <keys@linux.kernel.org>; Thu,  3 Feb 2022 14:18:57 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id c189so2644530qkg.11
        for <keys@linux.kernel.org>; Thu, 03 Feb 2022 06:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=eSZEZ+s5jm/XWtSJuIpYfB8Rxp013Rv0vhhbXCPzESs=;
        b=MwOM4T6wrVoerlSgOGgireFnJ8emw1gFareVQ3+E0Xg9+x22ZmFiysenHgmXsoaZUJ
         9vRxCP3Ask+SDpIMf3B4pRdhZ2LwZxb+SxWbnhTSKsXG4FJEgf8frl1Tx3vkN/2oM5k8
         0Cb02Oc9s+oTegzOCWXxzG1VRnnjGbD7N8FbI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eSZEZ+s5jm/XWtSJuIpYfB8Rxp013Rv0vhhbXCPzESs=;
        b=ViIIblxFAngl2GzNXhSQGUw+wMMMTOlnDxwpna70Bp3uRBNSxf754SCl2eZQjrUDqQ
         kI3CRM8EbekAw8MOGYfm2dAYEmzrzwGU2RaC4Tjv13I1VR9+PtkKRDpIuK/hq7PXZunU
         edxvsLe+pkNZWuXSyB+ROFhnYLXp7/DR4cbW1rDGQXZJI1pDctjgUrxoPt2x/li2nYRZ
         Y3X5a3xaZ1CbEJdScJAZIViU0C0i2juVPikfUgG38ipxd/3wU+ljz8ImQxJcjP06Hh6W
         Nd4Jjw2A4+pjLITMuOM5i7KurfQJR7tTC1GI5ztEE/5ckBwq4w/Fn1+igdGZH2Mr/Yc7
         H3Gg==
X-Gm-Message-State: AOAM532+KGpMZF8w8HqQ1XW5pIqpc7foCGnn+QF5Qt8oQr8iaxvVeQxi
	u8onUkLAUip6X7sXz2iMy/BJ4xqLHTq2xA==
X-Google-Smtp-Source: ABdhPJwcoqxy9CrAQEEtOAA7t51h6Rue4cAntvUt7/T2Eg/tSh+bPS3Cpdc4Y4odnKLhdIRdFWRoGA==
X-Received: by 2002:a05:620a:4548:: with SMTP id u8mr2703639qkp.532.1643897936693;
        Thu, 03 Feb 2022 06:18:56 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id g20sm6566071qtk.2.2022.02.03.06.18.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Feb 2022 06:18:56 -0800 (PST)
Date: Thu, 3 Feb 2022 09:18:54 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Harald Hoyer <harald@hoyer.xyz>
Cc: keys@linux.kernel.org
Subject: Re: your mail
Message-ID: <20220203141854.4njybnnzyif2rqhx@meerkat.local>
References: <8bb138a4-061b-ff1e-f702-8492f074cb2d@hoyer.xyz>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8bb138a4-061b-ff1e-f702-8492f074cb2d@hoyer.xyz>

On Thu, Feb 03, 2022 at 02:41:44PM +0100, Harald Hoyer wrote:

> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
