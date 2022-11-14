Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4379C4C97
	for <keys@linux.kernel.org>; Mon, 14 Nov 2022 14:52:49 +0000 (UTC)
Received: by mail-qv1-f51.google.com with SMTP id w10so7894255qvr.3
        for <keys@linux.kernel.org>; Mon, 14 Nov 2022 06:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n25useHT34F5KTJsJotbXPsm8ehYKarMTSHZCArw0XM=;
        b=H+hgKIBLxqZY56GvxqOh4fn6aOo1jS71p+yL98DCCTWYjPg+2hR9wmJKpG9xGnSA/a
         15Drk9NX4OV5bBz9YBeJyvJmid0AkcrWtYbaRON+xokO9Mtdeb7Dqo2tWDGEi8KYL4G4
         tuK3DDXqBgUF/q6l7AZLjXtnVZ5dkhzjKvi3w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n25useHT34F5KTJsJotbXPsm8ehYKarMTSHZCArw0XM=;
        b=180C3MAwELdUDDY/sHmchdvYaY6L1c+pmpDjVMsJi5fEA70uF6vU1d9uxhFpP6Xjfe
         o/+e2j9xrO+2QOsH3+m1GSUQLyWJn9qmDNxl/EeRMV1IbEiGXkzs1E9rzA2zba7W8nqJ
         UHuD74wk+xTeXsU4MtC2Vr7wrdAHIckNadNb02zlSh4ZX43RVNo7K4lY5q/xirDCyPOu
         nSMlbUBeR7z8fioNATsqfvn5Zef43+nYzgqCRYow5MEbE4DrGDFxocHaj/1W445pql1v
         TXSBWQAGJM607dXkcba1qk8A1sd6WIGqyHzrgPmtaU1eK4Lz+ek8F/pK8WTWBwajeQoa
         N9JQ==
X-Gm-Message-State: ANoB5plQqIxaWPC/EyEl1Srys9/QEr5iDMwlk0sAS/3amC/+W1y/f3ah
	NPf/e3XDK2P1kThAh11tssV6dA==
X-Google-Smtp-Source: AA0mqf4EfbChpOEIilp3TTq/JFFnAWg4vhkC+wrl1aq45yp0Lp38E9kld8qDoRZIkj3faX4HEQxXBw==
X-Received: by 2002:a05:6214:5247:b0:4bb:9358:2a1e with SMTP id kf7-20020a056214524700b004bb93582a1emr12505837qvb.97.1668437568097;
        Mon, 14 Nov 2022 06:52:48 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id x1-20020a05620a448100b006cec8001bf4sm6718470qkp.26.2022.11.14.06.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 06:52:47 -0800 (PST)
Date: Mon, 14 Nov 2022 09:52:46 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Daniel Wagner <wagi@monom.org>
Cc: keys@linux.kernel.org
Subject: Re: New subkeys for Daniel Wagner
Message-ID: <20221114145246.y22ibv5s2cj6ng4i@meerkat.local>
References: <df6a2105-6ea7-f9fc-f67e-0ee02772e5da@monom.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <df6a2105-6ea7-f9fc-f67e-0ee02772e5da@monom.org>

On Mon, Nov 14, 2022 at 11:37:12AM +0100, Daniel Wagner wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
